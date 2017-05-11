.class public Lcom/android/launcher3/common/model/FavoritesProvider;
.super Lcom/android/launcher3/common/model/DataProvider;
.source "FavoritesProvider.java"

# interfaces
.implements Lcom/android/launcher3/common/model/DataProvider$DataInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;
    }
.end annotation


# static fields
.field public static final CHECK_CHANGED_COMPONENT_EXITST:Ljava/lang/String; = "checkChangedComponentVersion"

.field private static final CLOCK_WIDGET_EASY_PACKAGE:Ljava/lang/String; = "com.sec.android.daemonapp"

.field private static final DALI_PAGE_SETTING_DB:Ljava/lang/String; = "pagesettings.db"

.field private static final DEBUGGABLE:Z = true

.field private static final EASY_LAUNCHER_DB:Ljava/lang/String; = "easylauncher.db"

.field private static final EASY_MODE_GRID:I = 0x3

.field private static final EASY_MODE_PREFERENCE_FILE:Ljava/lang/String; = "com.sec.android.app.easylauncher.prefs.xml"

.field private static final EASY_MODE_PREFERENCE_KEY:Ljava/lang/String; = "com.sec.android.app.easylauncher.prefs"

.field public static final EMPTY_DATABASE_SWITCHED:Ljava/lang/String; = "EMPTY_DATABASE_SWITCHED"

.field private static final HOME_INDEX_EASY_MODE:I = 0x2

.field public static final SWITCH_EASY_MODE:I = 0x2

.field public static final SWITCH_HOME_MODE:I = 0x1

.field public static final SWITCH_HOME_MODE_ON_EASY:I = 0x3

.field private static final TABLE_APPORDER:Ljava/lang/String; = "appOrder"

.field private static final TABLE_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TABLE_FAVORITES_EASY:Ljava/lang/String; = "favorites_easy"

.field private static final TABLE_FAVORITES_HOME_APPS:Ljava/lang/String; = "favorites_homeApps"

.field private static final TABLE_FAVORITES_HOME_ONLY:Ljava/lang/String; = "favorites_homeOnly"

.field private static final TABLE_FAVORITES_STANDARD:Ljava/lang/String; = "favorites_standard"

.field private static final TABLE_WORKSPACE_SCREENS:Ljava/lang/String; = "workspaceScreens"

.field private static final TABLE_WORKSPACE_SCREENS_EASY:Ljava/lang/String; = "workspaceScreens_easy"

.field private static final TABLE_WORKSPACE_SCREENS_HOME_APPS:Ljava/lang/String; = "workspaceScreens_homeApps"

.field private static final TABLE_WORKSPACE_SCREENS_HOME_ONLY:Ljava/lang/String; = "workspaceScreens_homeOnly"

.field private static final TABLE_WORKSPACE_SCREENS_STANDARD:Ljava/lang/String; = "workspaceScreens_standard"

.field private static final TAG:Ljava/lang/String; = "FavoritesProvider"

.field private static final WEATHER_WIDGET_EASY_CLASS:Ljava/lang/String; = "com.sec.android.daemonapp.appwidget.WeatherAppWidget"

.field private static final WEATHER_WIDGET_EASY_PACKAGE:Ljava/lang/String; = "com.sec.android.daemonapp"

.field private static final sInstance:Lcom/android/launcher3/common/model/FavoritesProvider;


# instance fields
.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mDaliPageCnt:I

.field private mMaxScreenId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-direct {v0}, Lcom/android/launcher3/common/model/FavoritesProvider;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sInstance:Lcom/android/launcher3/common/model/FavoritesProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/launcher3/common/model/DataProvider;-><init>()V

    .line 101
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 122
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxScreenId:J

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mDaliPageCnt:I

    .line 126
    return-void
.end method

.method private addAppsButton(Ljava/lang/String;J)V
    .locals 8
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "maxID"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 2838
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2840
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "_id"

    const-wide/16 v4, 0x1

    add-long/2addr p2, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2841
    const-string v2, "title"

    const-string v4, "Apps"

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2842
    const-string v2, "container"

    const/16 v4, -0x65

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2843
    const-string v4, "cellX"

    move-object v2, v3

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 2844
    const-string v4, "cellY"

    move-object v2, v3

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 2845
    const-string v2, "screen"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2846
    const-string v2, "spanX"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2847
    const-string v2, "spanY"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2848
    const-string v2, "itemType"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2849
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.launcher.action.SHOW_APPS_VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2851
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "intent"

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2852
    const-string v4, "appWidgetProvider"

    move-object v2, v3

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 2854
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p1, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2855
    return-void
.end method

.method private addDataToEasyTable(Landroid/database/Cursor;Ljava/lang/String;IJ)V
    .locals 18
    .param p1, "cr"    # Landroid/database/Cursor;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "contactCount"    # I
    .param p4, "userSerial"    # J

    .prologue
    .line 2736
    if-nez p1, :cond_1

    .line 2737
    const-string v14, "FavoritesProvider"

    const-string v15, "Cursor is null!!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    :cond_0
    :goto_0
    return-void

    .line 2741
    :cond_1
    const-string v14, "rowID"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 2742
    .local v6, "idx_Id":I
    const-string v14, "screen"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 2743
    .local v12, "idx_screen":I
    const-string v14, "position"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 2744
    .local v11, "idx_position":I
    const-string v14, "appWidgetID"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 2745
    .local v8, "idx_appWidgetID":I
    const-string v14, "packageName"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 2746
    .local v10, "idx_packageName":I
    const-string v14, "className"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 2747
    .local v9, "idx_className":I
    const-string v14, "appIcon"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 2749
    .local v7, "idx_appIcon":I
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 2753
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 2754
    .local v13, "values":Landroid/content/ContentValues;
    const-string v14, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2755
    const-string v15, "title"

    const/4 v14, 0x0

    check-cast v14, Ljava/lang/Byte;

    invoke-virtual {v13, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 2757
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_2

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x1

    if-gt v14, v15, :cond_2

    .line 2759
    const-string v14, "container"

    const/16 v15, -0x65

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2760
    const-string v15, "cellX"

    const/4 v14, 0x0

    check-cast v14, Ljava/lang/Byte;

    invoke-virtual {v13, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 2761
    const-string v15, "cellY"

    const/4 v14, 0x0

    check-cast v14, Ljava/lang/Byte;

    invoke-virtual {v13, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 2762
    const-string v14, "screen"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2771
    :goto_1
    const-string v14, "spanX"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2772
    const-string v14, "spanY"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2774
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    if-lez v14, :cond_5

    .line 2775
    const-string v14, "itemType"

    const/4 v15, 0x4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2776
    const-string v15, "intent"

    const/4 v14, 0x0

    check-cast v14, Ljava/lang/Byte;

    invoke-virtual {v13, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 2779
    const-string v14, "com.sec.android.daemonapp"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 2780
    sget-object v14, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 2781
    .local v3, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    const/4 v2, -0x1

    .line 2782
    .local v2, "appWidgetId":I
    const-string v14, "com.sec.android.daemonapp"

    const-string v15, "com.sec.android.daemonapp.appwidget.WeatherAppWidget"

    invoke-static {v14, v15}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 2785
    .local v4, "cn":Landroid/content/ComponentName;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/common/model/FavoritesProvider;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v14}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v2

    .line 2786
    invoke-virtual {v3, v2, v4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 2787
    const-string v14, "FavoritesProvider"

    const-string v15, "Failed to initialize external widget"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2790
    :catch_0
    move-exception v5

    .line 2791
    .local v5, "e":Ljava/lang/RuntimeException;
    const-string v14, "FavoritesProvider"

    const-string v15, "Failed to initialize external widget"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2764
    .end local v2    # "appWidgetId":I
    .end local v3    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .end local v4    # "cn":Landroid/content/ComponentName;
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :cond_2
    const-string v14, "container"

    const/16 v15, -0x64

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2765
    const-string v14, "cellX"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    rem-int/lit8 v15, v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2766
    const-string v15, "cellY"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    div-int/lit8 v16, v14, 0x3

    .line 2767
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v14, v0, :cond_3

    const/4 v14, 0x2

    :goto_2
    add-int v14, v14, v16

    .line 2766
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2768
    const-string v14, "screen"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    sub-int v15, v15, p3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 2767
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 2794
    .restart local v2    # "appWidgetId":I
    .restart local v3    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .restart local v4    # "cn":Landroid/content/ComponentName;
    :cond_4
    const-string v14, "appWidgetProvider"

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2795
    const-string v14, "spanX"

    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2796
    const-string v14, "spanY"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2797
    const-string v14, "cellX"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2798
    const-string v14, "cellY"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2799
    const-string v14, "appWidgetId"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2812
    .end local v2    # "appWidgetId":I
    .end local v3    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .end local v4    # "cn":Landroid/content/ComponentName;
    :goto_3
    const-string v15, "iconType"

    const/4 v14, 0x0

    check-cast v14, Ljava/lang/Byte;

    invoke-virtual {v13, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 2813
    const-string v15, "iconPackage"

    const/4 v14, 0x0

    check-cast v14, Ljava/lang/Byte;

    invoke-virtual {v13, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 2814
    const-string v15, "iconResource"

    const/4 v14, 0x0

    check-cast v14, Ljava/lang/Byte;

    invoke-virtual {v13, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 2815
    const-string v14, "icon"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2817
    sget-object v14, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v14, v0, v15, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0

    .line 2805
    :cond_5
    const-string v14, "itemType"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2806
    const-string v14, "intent"

    .line 2807
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2808
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 2807
    invoke-static/range {v15 .. v16}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v15

    .line 2806
    move-wide/from16 v0, p4

    invoke-static {v15, v0, v1}, Lcom/android/launcher3/common/base/item/IconInfo;->makeLaunchIntent(Landroid/content/ComponentName;J)Landroid/content/Intent;

    move-result-object v15

    const/16 v16, 0x0

    .line 2808
    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v15

    .line 2806
    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2809
    const-string v15, "appWidgetProvider"

    const/4 v14, 0x0

    check-cast v14, Ljava/lang/Byte;

    invoke-virtual {v13, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    goto :goto_3
.end method

.method private addScreenIdIfNecessary(J)Z
    .locals 9
    .param p1, "screenId"    # J

    .prologue
    .line 1188
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/model/FavoritesProvider;->hasScreenId(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1189
    invoke-direct {p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->getMaxScreenRank()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 1191
    .local v1, "rank":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1192
    .local v2, "v":Landroid/content/ContentValues;
    const-string v3, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1193
    const-string v3, "screenRank"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1194
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "workspaceScreens"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v2}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 1195
    const/4 v3, 0x0

    .line 1206
    .end local v1    # "rank":I
    .end local v2    # "v":Landroid/content/ContentValues;
    :goto_0
    return v3

    .line 1201
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProviderID()Lcom/android/launcher3/LauncherProviderID;

    move-result-object v0

    .line 1202
    .local v0, "providerID":Lcom/android/launcher3/LauncherProviderID;
    if-eqz v0, :cond_1

    .line 1203
    const-string v3, "FavoritesProvider"

    const-string v4, "[SPRINT] Adding screen is necessary. Updating screen count"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProviderID;->updateScreenCount()V

    .line 1206
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private bindAppWidgetForHomeOnly()V
    .locals 30

    .prologue
    .line 1625
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1626
    .local v21, "removeWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v26, Landroid/util/LongSparseArray;

    invoke-direct/range {v26 .. v26}, Landroid/util/LongSparseArray;-><init>()V

    .line 1627
    .local v26, "updateWidgets":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "appWidgetProvider"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    const-string v5, "profileId"

    aput-object v5, v6, v4

    .line 1628
    .local v6, "columns":[Ljava/lang/String;
    const-string v7, "itemType=?"

    .line 1629
    .local v7, "selection":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .line 1631
    .local v8, "selectionArg":[Ljava/lang/String;
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "favorites_homeOnly"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1634
    .local v17, "cursor":Landroid/database/Cursor;
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v13

    .line 1635
    .local v13, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v28

    .line 1637
    .local v28, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    if-eqz v17, :cond_2

    .line 1639
    :goto_0
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1640
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/common/model/FavoritesProvider;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v12

    .line 1641
    .local v12, "appWidgetId":I
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 1642
    .local v22, "id":J
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1643
    .local v14, "appWidgetProvider":Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 1644
    .local v24, "profileId":J
    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v15

    .line 1645
    .local v15, "cn":Landroid/content/ComponentName;
    move-object/from16 v0, v28

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v27

    .line 1646
    .local v27, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v13, v12, v4, v15, v5}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1647
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1654
    .end local v12    # "appWidgetId":I
    .end local v14    # "appWidgetProvider":Ljava/lang/String;
    .end local v15    # "cn":Landroid/content/ComponentName;
    .end local v22    # "id":J
    .end local v24    # "profileId":J
    .end local v27    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :catchall_0
    move-exception v4

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1649
    .restart local v12    # "appWidgetId":I
    .restart local v14    # "appWidgetProvider":Ljava/lang/String;
    .restart local v15    # "cn":Landroid/content/ComponentName;
    .restart local v22    # "id":J
    .restart local v24    # "profileId":J
    .restart local v27    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_0
    :try_start_1
    const-string v4, "FavoritesProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to bind app widget during copy for homeonly "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1654
    .end local v12    # "appWidgetId":I
    .end local v14    # "appWidgetProvider":Ljava/lang/String;
    .end local v15    # "cn":Landroid/content/ComponentName;
    .end local v22    # "id":J
    .end local v24    # "profileId":J
    .end local v27    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1658
    :cond_2
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 1659
    .local v29, "values":Landroid/content/ContentValues;
    invoke-virtual/range {v26 .. v26}, Landroid/util/LongSparseArray;->size()I

    move-result v16

    .line 1660
    .local v16, "count":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 1661
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v18

    .line 1662
    .local v18, "dbId":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1663
    invoke-virtual/range {v29 .. v29}, Landroid/content/ContentValues;->clear()V

    .line 1664
    const-string v5, "appWidgetId"

    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object/from16 v0, v29

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1665
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "favorites_homeOnly"

    const/4 v9, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v4, v5, v0, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1660
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 1668
    .end local v18    # "dbId":J
    :cond_3
    const-string v4, "FavoritesProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bindAppWidgetForHomeOnly removeAppwidget size "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1670
    const-string v4, "FavoritesProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "remove AppWidget "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", "

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "favorites_homeOnly"

    const-string v9, "_id"

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1674
    :cond_4
    return-void
.end method

.method private changePackageForManagedProfile(Ljava/util/HashMap;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 989
    .local p1, "componentNameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v13, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v12

    .line 990
    .local v12, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v6

    .line 991
    .local v6, "myUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    sget-object v13, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    const-string v14, "com.sec.android.app.launcher.managedusers.prefs"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 993
    .local v9, "prefs":Landroid/content/SharedPreferences;
    const/4 v5, 0x0

    .line 995
    .local v5, "isChangeList":Z
    invoke-virtual {v12}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 996
    .local v10, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-virtual {v6, v10}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 1000
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v8, "home_only_installed_packages_for_user_"

    .line 1002
    .local v8, "packageSetPrefix":Ljava/lang/String;
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v12, v10}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1003
    .local v7, "packageSetKey":Ljava/lang/String;
    const/4 v13, 0x0

    invoke-interface {v9, v7, v13}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v11

    .line 1004
    .local v11, "userApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v13, "FavoritesProvider"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "changePackageForManagedProfile user package key : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    if-eqz v11, :cond_0

    .line 1008
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_1
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1009
    .local v4, "componentName":Ljava/lang/String;
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 1010
    .local v3, "before":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1011
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1012
    .local v2, "after":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1013
    const-string v13, "FavoritesProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "changePackageForManagedProfile remove : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " add : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1014
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1013
    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    const/4 v5, 0x1

    goto :goto_2

    .line 1000
    .end local v2    # "after":Landroid/content/ComponentName;
    .end local v3    # "before":Landroid/content/ComponentName;
    .end local v4    # "componentName":Ljava/lang/String;
    .end local v7    # "packageSetKey":Ljava/lang/String;
    .end local v8    # "packageSetPrefix":Ljava/lang/String;
    .end local v11    # "userApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const-string v8, "installed_packages_for_user_"

    goto/16 :goto_1

    .line 1018
    .restart local v7    # "packageSetKey":Ljava/lang/String;
    .restart local v8    # "packageSetPrefix":Ljava/lang/String;
    .restart local v11    # "userApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    if-eqz v5, :cond_0

    .line 1019
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13, v7, v11}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1023
    .end local v7    # "packageSetKey":Ljava/lang/String;
    .end local v8    # "packageSetPrefix":Ljava/lang/String;
    .end local v10    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v11    # "userApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method private convertAppsTable(Ljava/lang/String;I)V
    .locals 43
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "gridX"    # I

    .prologue
    .line 572
    const/16 v31, 0x0

    .line 574
    .local v31, "ti":Landroid/database/Cursor;
    const-wide/16 v32, -0x1

    .line 576
    .local v32, "maxId":J
    :try_start_0
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "MAX(_id)"

    aput-object v5, v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 579
    if-nez v31, :cond_1

    .line 580
    const-string v2, "FavoritesProvider"

    const-string v3, "AppsTable converting error : NPE when getting max id"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 684
    if-eqz v31, :cond_0

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 685
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    :try_start_1
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 585
    const/4 v2, 0x0

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 587
    :cond_2
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 589
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 591
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "appOrder"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "folderId, screen, cell"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 593
    if-nez v31, :cond_3

    .line 594
    const-string v2, "FavoritesProvider"

    const-string v3, "AppsTable converting error : Getting app order list item"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 682
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 684
    if-eqz v31, :cond_0

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 685
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 598
    :cond_3
    :try_start_2
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 599
    const-string v2, "_id"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 600
    .local v24, "idx_Id":I
    const-string v2, "folderId"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 601
    .local v26, "idx_folderId":I
    const-string v2, "screen"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 602
    .local v29, "idx_screen":I
    const-string v2, "title"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 603
    .local v30, "idx_title":I
    const-string v2, "componentName"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v25

    .line 606
    .local v25, "idx_cn":I
    :try_start_3
    const-string v2, "profileId"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v28

    .line 610
    .local v28, "idx_profileId":I
    :goto_1
    :try_start_4
    const-string v2, "hidden"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 612
    .local v27, "idx_hidden":I
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 614
    .local v22, "folderIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-wide/16 v18, -0x66

    .line 615
    .local v18, "container":J
    const-wide/16 v36, 0x0

    .line 616
    .local v36, "prevScreen":J
    const-wide/16 v34, -0x1

    .line 617
    .local v34, "prevFolder":J
    const-wide/16 v40, 0x0

    .line 618
    .local v40, "rank":J
    const-wide/16 v12, -0x1

    .local v12, "cellX":J
    const-wide/16 v14, 0x0

    .line 622
    .local v14, "cellY":J
    :cond_4
    new-instance v42, Landroid/content/ContentValues;

    invoke-direct/range {v42 .. v42}, Landroid/content/ContentValues;-><init>()V

    .line 623
    .local v42, "values":Landroid/content/ContentValues;
    const-string v2, "_id"

    const-wide/16 v4, 0x1

    add-long v32, v32, v4

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 624
    const-string v2, "title"

    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 627
    .local v10, "_id":J
    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 628
    .local v16, "cn":Ljava/lang/String;
    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 629
    .local v20, "folderId":J
    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 630
    .local v23, "hidden":I
    if-lez v28, :cond_9

    .line 631
    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v38, v0

    .line 636
    .local v38, "profileId":J
    :goto_2
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 637
    const-string v2, "itemType"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 638
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    :goto_3
    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-lez v2, :cond_5

    .line 648
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 650
    :cond_5
    const-string v2, "container"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 652
    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    cmp-long v2, v2, v36

    if-eqz v2, :cond_6

    cmp-long v2, v20, v34

    if-nez v2, :cond_b

    .line 653
    :cond_6
    const-wide/16 v2, 0x1

    add-long v40, v40, v2

    .line 654
    const-wide/16 v2, 0x1

    add-long/2addr v12, v2

    .line 656
    move/from16 v0, p2

    int-to-long v2, v0

    cmp-long v2, v12, v2

    if-ltz v2, :cond_7

    .line 657
    const-wide/16 v2, 0x1

    add-long/2addr v14, v2

    .line 658
    const-wide/16 v12, 0x0

    .line 668
    :cond_7
    :goto_4
    const-string v2, "screen"

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 669
    const-string v2, "cellX"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 670
    const-string v2, "cellY"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 671
    const-string v2, "rank"

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 672
    const-string v2, "hidden"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 673
    const-string v2, "profileId"

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 674
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v2, v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 675
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 677
    .end local v10    # "_id":J
    .end local v12    # "cellX":J
    .end local v14    # "cellY":J
    .end local v16    # "cn":Ljava/lang/String;
    .end local v18    # "container":J
    .end local v20    # "folderId":J
    .end local v22    # "folderIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v23    # "hidden":I
    .end local v24    # "idx_Id":I
    .end local v25    # "idx_cn":I
    .end local v26    # "idx_folderId":I
    .end local v27    # "idx_hidden":I
    .end local v28    # "idx_profileId":I
    .end local v29    # "idx_screen":I
    .end local v30    # "idx_title":I
    .end local v34    # "prevFolder":J
    .end local v36    # "prevScreen":J
    .end local v38    # "profileId":J
    .end local v40    # "rank":J
    .end local v42    # "values":Landroid/content/ContentValues;
    :cond_8
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 678
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 682
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 684
    if-eqz v31, :cond_0

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 685
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 607
    .restart local v24    # "idx_Id":I
    .restart local v25    # "idx_cn":I
    .restart local v26    # "idx_folderId":I
    .restart local v29    # "idx_screen":I
    .restart local v30    # "idx_title":I
    :catch_0
    move-exception v17

    .line 608
    .local v17, "e":Ljava/lang/IllegalArgumentException;
    const/16 v28, -0x1

    .restart local v28    # "idx_profileId":I
    goto/16 :goto_1

    .line 633
    .end local v17    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v10    # "_id":J
    .restart local v12    # "cellX":J
    .restart local v14    # "cellY":J
    .restart local v16    # "cn":Ljava/lang/String;
    .restart local v18    # "container":J
    .restart local v20    # "folderId":J
    .restart local v22    # "folderIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v23    # "hidden":I
    .restart local v27    # "idx_hidden":I
    .restart local v34    # "prevFolder":J
    .restart local v36    # "prevScreen":J
    .restart local v40    # "rank":J
    .restart local v42    # "values":Landroid/content/ContentValues;
    :cond_9
    const-wide/16 v38, 0x0

    .restart local v38    # "profileId":J
    goto/16 :goto_2

    .line 640
    :cond_a
    :try_start_5
    const-string v2, "itemType"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 641
    const-string v2, "intent"

    .line 642
    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 641
    move-wide/from16 v0, v38

    invoke-static {v3, v0, v1}, Lcom/android/launcher3/common/base/item/IconInfo;->makeLaunchIntent(Landroid/content/ComponentName;J)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    .line 643
    invoke-virtual {v3, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    .line 641
    move-object/from16 v0, v42

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .line 679
    .end local v10    # "_id":J
    .end local v12    # "cellX":J
    .end local v14    # "cellY":J
    .end local v16    # "cn":Ljava/lang/String;
    .end local v18    # "container":J
    .end local v20    # "folderId":J
    .end local v22    # "folderIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v23    # "hidden":I
    .end local v24    # "idx_Id":I
    .end local v25    # "idx_cn":I
    .end local v26    # "idx_folderId":I
    .end local v27    # "idx_hidden":I
    .end local v28    # "idx_profileId":I
    .end local v29    # "idx_screen":I
    .end local v30    # "idx_title":I
    .end local v34    # "prevFolder":J
    .end local v36    # "prevScreen":J
    .end local v38    # "profileId":J
    .end local v40    # "rank":J
    .end local v42    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v17

    .line 680
    .local v17, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v2, "FavoritesProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppsTable converting error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 682
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 684
    if-eqz v31, :cond_0

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 685
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 661
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v10    # "_id":J
    .restart local v12    # "cellX":J
    .restart local v14    # "cellY":J
    .restart local v16    # "cn":Ljava/lang/String;
    .restart local v18    # "container":J
    .restart local v20    # "folderId":J
    .restart local v22    # "folderIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v23    # "hidden":I
    .restart local v24    # "idx_Id":I
    .restart local v25    # "idx_cn":I
    .restart local v26    # "idx_folderId":I
    .restart local v27    # "idx_hidden":I
    .restart local v28    # "idx_profileId":I
    .restart local v29    # "idx_screen":I
    .restart local v30    # "idx_title":I
    .restart local v34    # "prevFolder":J
    .restart local v36    # "prevScreen":J
    .restart local v38    # "profileId":J
    .restart local v40    # "rank":J
    .restart local v42    # "values":Landroid/content/ContentValues;
    :cond_b
    :try_start_7
    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-wide v36

    .line 662
    move-wide/from16 v34, v20

    .line 663
    const-wide/16 v40, 0x0

    .line 664
    const-wide/16 v12, 0x0

    .line 665
    const-wide/16 v14, 0x0

    goto/16 :goto_4

    .line 682
    .end local v10    # "_id":J
    .end local v12    # "cellX":J
    .end local v14    # "cellY":J
    .end local v16    # "cn":Ljava/lang/String;
    .end local v18    # "container":J
    .end local v20    # "folderId":J
    .end local v22    # "folderIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v23    # "hidden":I
    .end local v24    # "idx_Id":I
    .end local v25    # "idx_cn":I
    .end local v26    # "idx_folderId":I
    .end local v27    # "idx_hidden":I
    .end local v28    # "idx_profileId":I
    .end local v29    # "idx_screen":I
    .end local v30    # "idx_title":I
    .end local v34    # "prevFolder":J
    .end local v36    # "prevScreen":J
    .end local v38    # "profileId":J
    .end local v40    # "rank":J
    .end local v42    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 684
    if-eqz v31, :cond_c

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_c

    .line 685
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v2
.end method

.method private copyAppsItemsToHome(Ljava/util/ArrayList;)V
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1759
    .local p1, "homeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    const-string v5, "AppsController.ViewType"

    .line 1760
    .local v5, "APPS_VIEW_TYPE":Ljava/lang/String;
    const-string v6, "CUSTOM_GRID"

    .line 1761
    .local v6, "CUSTOM_GRID":Ljava/lang/String;
    const-string v4, "ALPHABETIC_GRID"

    .line 1763
    .local v4, "ALPHABETIC_GRID":Ljava/lang/String;
    new-instance v14, Landroid/util/LongSparseArray;

    invoke-direct {v14}, Landroid/util/LongSparseArray;-><init>()V

    .line 1764
    .local v14, "folderChildList":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;>;"
    new-instance v15, Landroid/util/LongSparseArray;

    invoke-direct {v15}, Landroid/util/LongSparseArray;-><init>()V

    .line 1765
    .local v15, "folderIdMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1766
    .local v7, "addItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1767
    .local v18, "hiddenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v35, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    .line 1768
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x0

    .line 1767
    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v31

    .line 1769
    .local v31, "prefs":Landroid/content/SharedPreferences;
    const-string v35, "AppsController.ViewType"

    const-string v36, "CUSTOM_GRID"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1771
    .local v34, "viewType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v7, v14}, Lcom/android/launcher3/common/model/FavoritesProvider;->makeCopyItemList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/util/LongSparseArray;)V

    .line 1773
    const-string v35, "ALPHABETIC_GRID"

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_0

    .line 1774
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v14}, Lcom/android/launcher3/common/model/FavoritesProvider;->sortAlphabeticalOrder(Ljava/util/ArrayList;Landroid/util/LongSparseArray;)V

    .line 1777
    :cond_0
    const-string v35, "favorites_homeOnly"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->initializeMaxItemId(Ljava/lang/String;)J

    move-result-wide v22

    .line 1779
    .local v22, "itemId":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->getMaxScreenId()J

    move-result-wide v24

    .line 1780
    .local v24, "maxScreenId":J
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->getMaxScreenRank()I

    move-result v26

    .line 1781
    .local v26, "maxScreenRank":I
    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v10, v0, [I

    .line 1782
    .local v10, "cellXY":[I
    sget-object v35, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    move-object/from16 v0, v35

    invoke-static {v0, v10}, Lcom/android/launcher3/Utilities;->loadCurrentGridSize(Landroid/content/Context;[I)V

    .line 1783
    const/16 v27, 0x1

    .line 1785
    .local v27, "needScreenAdd":Z
    const/4 v8, 0x0

    .line 1786
    .local v8, "cellX":I
    const/4 v11, 0x0

    .line 1787
    .local v11, "cellY":I
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 1789
    .local v30, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :goto_0
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_1

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1790
    .local v20, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    const-wide/16 v36, 0x1

    add-long v22, v22, v36

    .line 1791
    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    .line 1792
    const-wide/16 v36, -0x1

    move-wide/from16 v0, v36

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1793
    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    .line 1794
    .local v33, "values":Landroid/content/ContentValues;
    sget-object v36, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/base/item/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 1795
    sget-object v32, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_HomeOnly;->CONTENT_URI:Landroid/net/Uri;

    .line 1796
    .local v32, "uri":Landroid/net/Uri;
    invoke-static/range {v32 .. v32}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v36

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1799
    .end local v20    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v32    # "uri":Landroid/net/Uri;
    .end local v33    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :goto_1
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_5

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1800
    .restart local v20    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v27, :cond_2

    .line 1801
    const-wide/16 v36, 0x1

    add-long v24, v24, v36

    .line 1802
    add-int/lit8 v26, v26, 0x1

    .line 1803
    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    .line 1804
    .restart local v33    # "values":Landroid/content/ContentValues;
    const-string v36, "_id"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1805
    const-string v36, "screenRank"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1806
    sget-object v36, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v37, "workspaceScreens_homeOnly"

    const/16 v38, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1807
    const/16 v27, 0x0

    .line 1810
    .end local v33    # "values":Landroid/content/ContentValues;
    :cond_2
    const-wide/16 v36, 0x1

    add-long v22, v22, v36

    .line 1811
    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/launcher3/folder/FolderInfo;

    move/from16 v36, v0

    if-eqz v36, :cond_3

    .line 1812
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-wide/from16 v36, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v38

    invoke-virtual {v15, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1816
    :cond_3
    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    .line 1817
    move-wide/from16 v0, v24

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1818
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "cellX":I
    .local v9, "cellX":I
    move-object/from16 v0, v20

    iput v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 1819
    move-object/from16 v0, v20

    iput v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 1820
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v0, v36

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 1822
    const/16 v36, 0x0

    aget v36, v10, v36

    move/from16 v0, v36

    if-ne v9, v0, :cond_8

    .line 1823
    const/4 v8, 0x0

    .line 1824
    .end local v9    # "cellX":I
    .restart local v8    # "cellX":I
    add-int/lit8 v11, v11, 0x1

    .line 1826
    :goto_2
    const/16 v36, 0x1

    aget v36, v10, v36

    move/from16 v0, v36

    if-ne v11, v0, :cond_4

    .line 1827
    const/4 v11, 0x0

    .line 1828
    const/16 v27, 0x1

    .line 1831
    :cond_4
    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    .line 1832
    .restart local v33    # "values":Landroid/content/ContentValues;
    sget-object v36, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/base/item/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 1833
    sget-object v32, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_HomeOnly;->CONTENT_URI:Landroid/net/Uri;

    .line 1834
    .restart local v32    # "uri":Landroid/net/Uri;
    invoke-static/range {v32 .. v32}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v36

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1837
    .end local v20    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v32    # "uri":Landroid/net/Uri;
    .end local v33    # "values":Landroid/content/ContentValues;
    :cond_5
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_3
    invoke-virtual {v14}, Landroid/util/LongSparseArray;->size()I

    move-result v35

    move/from16 v0, v19

    move/from16 v1, v35

    if-ge v0, v1, :cond_7

    .line 1838
    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v16

    .line 1839
    .local v16, "folderId":J
    invoke-virtual/range {v15 .. v17}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Long;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    .line 1841
    .local v28, "newFolderId":J
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    .line 1842
    .local v21, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v21, :cond_6

    .line 1844
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :goto_4
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_6

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1845
    .restart local v20    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    const-wide/16 v36, 0x1

    add-long v22, v22, v36

    .line 1846
    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    .line 1847
    move-wide/from16 v0, v28

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 1849
    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    .line 1850
    .restart local v33    # "values":Landroid/content/ContentValues;
    sget-object v36, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/base/item/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 1852
    sget-object v32, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_HomeOnly;->CONTENT_URI:Landroid/net/Uri;

    .line 1853
    .restart local v32    # "uri":Landroid/net/Uri;
    invoke-static/range {v32 .. v32}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v36

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1837
    .end local v20    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v32    # "uri":Landroid/net/Uri;
    .end local v33    # "values":Landroid/content/ContentValues;
    :cond_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 1857
    .end local v16    # "folderId":J
    .end local v21    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v28    # "newFolderId":J
    :cond_7
    sget-object v35, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 1859
    .local v12, "cr":Landroid/content/ContentResolver;
    :try_start_0
    sget-object v35, Lcom/android/launcher3/LauncherProvider;->AUTHORITY:Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1863
    :goto_5
    return-void

    .line 1860
    :catch_0
    move-exception v13

    .line 1861
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .end local v8    # "cellX":I
    .end local v12    # "cr":Landroid/content/ContentResolver;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v19    # "i":I
    .restart local v9    # "cellX":I
    .restart local v20    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_8
    move v8, v9

    .end local v9    # "cellX":I
    .restart local v8    # "cellX":I
    goto/16 :goto_2
.end method

.method private copyPreferenceForHomeOnly()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, -0x1

    .line 2107
    sget-object v8, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    const-string v9, "com.sec.android.app.launcher.managedusers.prefs"

    invoke-virtual {v8, v9, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2109
    .local v1, "prefs":Landroid/content/SharedPreferences;
    sget-object v8, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v5

    .line 2110
    .local v5, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    invoke-virtual {v5}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    .line 2111
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/UserHandleCompat;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 2112
    .local v3, "profileUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2115
    invoke-virtual {v5, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v6

    .line 2116
    .local v6, "userSerialNumber":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "user_folder_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2117
    .local v0, "folderKey":Ljava/lang/String;
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2118
    const-string v9, "FavoritesProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "copy user folder id & package list : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2120
    .local v2, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "home_only_user_folder_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v10, 0x0

    .line 2121
    invoke-interface {v1, v0, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 2120
    invoke-interface {v2, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2122
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "home_only_installed_packages_for_user_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "installed_packages_for_user_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 2123
    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v10

    .line 2122
    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 2124
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 2128
    .end local v0    # "folderKey":Ljava/lang/String;
    .end local v2    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "profileUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v6    # "userSerialNumber":J
    :cond_1
    sget-object v8, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    const-string v9, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v8, v9, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2130
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2131
    .restart local v2    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "Workspace.HomeOnly.CellX"

    const-string v9, "Workspace.CellX"

    invoke-interface {v1, v9, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2132
    const-string v8, "Workspace.HomeOnly.CellY"

    const-string v9, "Workspace.CellY"

    invoke-interface {v1, v9, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2133
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2134
    return-void
.end method

.method private createFavoritesTable(JLjava/lang/String;)V
    .locals 3
    .param p1, "userSerial"    # J
    .param p3, "tableName"    # Ljava/lang/String;

    .prologue
    .line 718
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "container"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "screen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cellX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cellY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "spanX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "spanY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "itemType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rank"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT 0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "intent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT -1,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appWidgetProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "iconType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "iconPackage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "iconResource"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "icon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BLOB,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "modified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT 0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "restored"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT 0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "profileId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "options"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT 0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "color"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT -1,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hidden"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT 0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "newCue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT 0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "festival"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT 0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 746
    return-void
.end method

.method private createScreensTable(Ljava/lang/String;)V
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 749
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "screenRank"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "modified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT 0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 755
    return-void
.end method

.method private getColumnList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 790
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 791
    .local v0, "colList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    const-string v1, "container"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    const-string v1, "screen"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    const-string v1, "cellX"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    const-string v1, "cellY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    const-string v1, "spanX"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    const-string v1, "spanY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    const-string v1, "itemType"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    const-string v1, "rank"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    const-string v1, "appWidgetProvider"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    const-string v1, "iconType"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    const-string v1, "iconPackage"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    const-string v1, "iconResource"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    const-string v1, "icon"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    const-string v1, "modified"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    const-string v1, "restored"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    const-string v1, "profileId"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    const-string v1, "options"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    const-string v1, "color"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    const-string v1, "newCue"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    const-string v1, "festival"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    const-string v1, "lock"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    return-object v0
.end method

.method private getHideItems(Ljava/util/HashSet;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1262
    .local p1, "hideItems":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "intent"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "profileId"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "hidden"

    aput-object v3, v4, v2

    .line 1265
    .local v4, "columns":[Ljava/lang/String;
    const-string v5, "hidden != ?"

    .line 1266
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1267
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1269
    .local v6, "selectionArg":[Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "favorites"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1271
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 1273
    :try_start_0
    const-string v2, "intent"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 1274
    .local v18, "intentIndex":I
    const-string v2, "profileId"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 1275
    .local v19, "profileIndex":I
    const-string v2, "hidden"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 1276
    .local v13, "hiddenIndex":I
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1277
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v14, v2

    .line 1278
    .local v14, "hiddenFlag":J
    const-wide/16 v2, 0x2

    and-long/2addr v2, v14

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-eqz v2, :cond_0

    .line 1279
    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1280
    .local v17, "intentDescription":Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 1283
    move/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v20

    .line 1286
    .local v20, "profile":J
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v16

    .line 1292
    .local v16, "intent":Landroid/content/Intent;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1293
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1294
    .local v11, "componentAndProfile":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1298
    .end local v11    # "componentAndProfile":Ljava/lang/String;
    .end local v13    # "hiddenIndex":I
    .end local v14    # "hiddenFlag":J
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v17    # "intentDescription":Ljava/lang/String;
    .end local v18    # "intentIndex":I
    .end local v19    # "profileIndex":I
    .end local v20    # "profile":J
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1287
    .restart local v13    # "hiddenIndex":I
    .restart local v14    # "hiddenFlag":J
    .restart local v17    # "intentDescription":Ljava/lang/String;
    .restart local v18    # "intentIndex":I
    .restart local v19    # "profileIndex":I
    .restart local v20    # "profile":J
    :catch_0
    move-exception v12

    .line 1288
    .local v12, "e":Ljava/net/URISyntaxException;
    :try_start_3
    const-string v2, "FavoritesProvider"

    const-string v3, "Unable to parse intent"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1298
    .end local v12    # "e":Ljava/net/URISyntaxException;
    .end local v14    # "hiddenFlag":J
    .end local v17    # "intentDescription":Ljava/lang/String;
    .end local v20    # "profile":J
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1301
    .end local v13    # "hiddenIndex":I
    .end local v18    # "intentIndex":I
    .end local v19    # "profileIndex":I
    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FavoritesProvider inited before app context set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sInstance:Lcom/android/launcher3/common/model/FavoritesProvider;

    return-object v0
.end method

.method private getMaxScreenRank()I
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 1242
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "MAX(screenRank)"

    aput-object v0, v2, v11

    .line 1245
    .local v2, "columns":[Ljava/lang/String;
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "workspaceScreens"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1248
    .local v8, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 1249
    .local v9, "maxRankIndex":I
    const/4 v10, -0x1

    .line 1250
    .local v10, "rank":I
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1251
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1253
    :cond_0
    if-eqz v8, :cond_1

    .line 1254
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1257
    :cond_1
    return v10
.end method

.method private hasScreenId(J)Z
    .locals 13
    .param p1, "screenId"    # J

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 1210
    const-string v3, "_id = ?"

    .line 1211
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    .line 1212
    .local v4, "selectionArgs":[Ljava/lang/String;
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "workspaceScreens"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1215
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1216
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1217
    .local v9, "count":I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1218
    if-lez v9, :cond_0

    move v0, v10

    .line 1220
    .end local v9    # "count":I
    :goto_0
    return v0

    .restart local v9    # "count":I
    :cond_0
    move v0, v11

    .line 1218
    goto :goto_0

    .end local v9    # "count":I
    :cond_1
    move v0, v11

    .line 1220
    goto :goto_0
.end method

.method private insertHideItem(Ljava/lang/String;JJJ)V
    .locals 8
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "container"    # J
    .param p4, "screen"    # J
    .param p6, "profile"    # J

    .prologue
    const/4 v6, 0x0

    .line 2821
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2822
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v0

    .line 2823
    .local v0, "id":J
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v4, p6, p7}, Lcom/android/launcher3/common/base/item/IconInfo;->makeLaunchIntent(Landroid/content/ComponentName;J)Landroid/content/Intent;

    move-result-object v2

    .line 2825
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2826
    const-string v4, "intent"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2827
    const-string v4, "container"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2828
    const-string v4, "title"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2829
    const-string v4, "screen"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2830
    const-string v4, "itemType"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2831
    const-string v4, "profileId"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2832
    const-string v4, "hidden"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2834
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "favorites"

    invoke-virtual {p0, v4, v5, v3}, Lcom/android/launcher3/common/model/FavoritesProvider;->insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2835
    return-void
.end method

.method private insertRemainHideItems(Ljava/util/HashMap;Z)V
    .locals 13
    .param p2, "isHomeOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1476
    .local p1, "homeItemsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 1477
    .local v10, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1478
    .local v9, "key":Ljava/lang/String;
    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1479
    const-wide/16 v6, 0x0

    .line 1480
    .local v6, "profile":J
    const-string v1, ""

    .line 1482
    .local v1, "component":Ljava/lang/String;
    const-string v0, ","

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1483
    .local v8, "arr":[Ljava/lang/String;
    array-length v0, v8

    const/4 v12, 0x2

    if-ne v0, v12, :cond_1

    .line 1484
    const/4 v0, 0x0

    aget-object v1, v8, v0

    .line 1485
    const/4 v0, 0x1

    aget-object v0, v8, v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1487
    :cond_1
    if-eqz p2, :cond_2

    .line 1488
    const-wide/16 v2, -0x64

    .line 1489
    .local v2, "container":J
    invoke-virtual {p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->getMaxScreenId()J

    move-result-wide v4

    .local v4, "screen":J
    :goto_1
    move-object v0, p0

    .line 1494
    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/common/model/FavoritesProvider;->insertHideItem(Ljava/lang/String;JJJ)V

    goto :goto_0

    .line 1491
    .end local v2    # "container":J
    .end local v4    # "screen":J
    :cond_2
    const-wide/16 v2, -0x66

    .line 1492
    .restart local v2    # "container":J
    const-wide/16 v4, 0x0

    .restart local v4    # "screen":J
    goto :goto_1

    .line 1497
    .end local v1    # "component":Ljava/lang/String;
    .end local v2    # "container":J
    .end local v4    # "screen":J
    .end local v6    # "profile":J
    .end local v8    # "arr":[Ljava/lang/String;
    .end local v9    # "key":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private loadChangedComponent()Ljava/util/HashMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 875
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 876
    .local v4, "changedList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v10, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    .line 877
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0007

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 878
    .local v6, "cmpList":[Ljava/lang/String;
    if-eqz v6, :cond_2

    array-length v10, v6

    if-lez v10, :cond_2

    .line 879
    array-length v11, v6

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v11, :cond_2

    aget-object v5, v6, v10

    .line 880
    .local v5, "cmp":Ljava/lang/String;
    const-string v12, "\\|"

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 882
    .local v7, "key":[Ljava/lang/String;
    array-length v12, v7

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    .line 883
    const/4 v12, 0x0

    const/4 v13, 0x0

    aget-object v13, v7, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v12

    .line 884
    const/4 v12, 0x0

    aget-object v12, v7, v12

    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 885
    .local v2, "before":Landroid/content/ComponentName;
    const/4 v12, 0x1

    const/4 v13, 0x1

    aget-object v13, v7, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v12

    .line 886
    const/4 v12, 0x1

    aget-object v12, v7, v12

    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 887
    .local v0, "after":Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 888
    sget-object v12, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    .line 889
    invoke-static {v12}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v8

    .line 890
    .local v8, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v9

    .line 892
    .local v9, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12, v9}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v3

    .line 894
    .local v3, "beforeMatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12, v9}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v1

    .line 895
    .local v1, "afterMatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 896
    const/4 v12, 0x0

    aget-object v12, v7, v12

    const/4 v13, 0x1

    aget-object v13, v7, v13

    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 900
    const/4 v12, 0x1

    aget-object v12, v7, v12

    const/4 v13, 0x0

    aget-object v13, v7, v13

    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    .end local v0    # "after":Landroid/content/ComponentName;
    .end local v1    # "afterMatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .end local v2    # "before":Landroid/content/ComponentName;
    .end local v3    # "beforeMatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .end local v8    # "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    .end local v9    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 906
    .end local v5    # "cmp":Ljava/lang/String;
    .end local v7    # "key":[Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method private makeCopyItemList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/util/LongSparseArray;)V
    .locals 51
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1867
    .local p1, "homeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    .local p2, "hiddenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p3, "addItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p4, "folderChildList":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;>;"
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v50

    .line 1868
    .local v50, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    new-instance v44, Landroid/util/LongSparseArray;

    invoke-direct/range {v44 .. v44}, Landroid/util/LongSparseArray;-><init>()V

    .line 1869
    .local v44, "folders":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const-string v5, "container=?"

    .line 1870
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, -0x66

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1872
    .local v6, "selectionArg":[Ljava/lang/String;
    const/16 v49, 0x0

    .line 1875
    .local v49, "maxScreen":I
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "favorites"

    const/4 v7, 0x1

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v12, "MAX(screen)"

    aput-object v12, v4, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v39

    .line 1881
    .local v39, "cursor":Landroid/database/Cursor;
    if-eqz v39, :cond_1

    .line 1883
    :try_start_0
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1884
    const/4 v2, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v49

    .line 1887
    :cond_0
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    .line 1890
    :cond_1
    const-string v2, "FavoritesProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeCopyItemList max screen "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v49

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "title"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "intent"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "profileId"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "color"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "options"

    aput-object v3, v4, v2

    .line 1895
    .local v4, "columns":[Ljava/lang/String;
    const/16 v45, 0x0

    .local v45, "i":I
    :goto_0
    move/from16 v0, v45

    move/from16 v1, v49

    if-gt v0, v1, :cond_7

    .line 1896
    const-string v5, "container=? AND screen=? AND hidden=?"

    .line 1898
    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    .end local v6    # "selectionArg":[Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v3, -0x66

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    invoke-static/range {v45 .. v45}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1899
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1900
    .restart local v6    # "selectionArg":[Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "favorites"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "rank"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v39

    .line 1903
    if-eqz v39, :cond_6

    .line 1905
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1906
    const/4 v2, 0x2

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v47

    .line 1907
    .local v47, "intentString":Ljava/lang/String;
    if-eqz v47, :cond_4

    .line 1909
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, v47

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v46

    .line 1910
    .local v46, "intent":Landroid/content/Intent;
    invoke-virtual/range {v46 .. v46}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1911
    invoke-virtual/range {v46 .. v46}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 1912
    .local v11, "cmp":Landroid/content/ComponentName;
    const/4 v2, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1913
    .local v9, "id":J
    const/4 v2, 0x3

    .line 1914
    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1913
    move-object/from16 v0, v50

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v16

    .line 1916
    .local v16, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    new-instance v38, Lcom/android/launcher3/util/ComponentKey;

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-direct {v0, v11, v1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 1917
    .local v38, "cmpKey":Lcom/android/launcher3/util/ComponentKey;
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1918
    const-wide/16 v14, -0x1

    .line 1920
    .local v14, "screenRank":J
    new-instance v8, Lcom/android/launcher3/common/base/item/IconInfo;

    const-wide/16 v12, -0x64

    invoke-direct/range {v8 .. v16}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>(JLandroid/content/ComponentName;JJLcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 1922
    .local v8, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1927
    .end local v8    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v9    # "id":J
    .end local v11    # "cmp":Landroid/content/ComponentName;
    .end local v14    # "screenRank":J
    .end local v16    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v38    # "cmpKey":Lcom/android/launcher3/util/ComponentKey;
    .end local v46    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v40

    .line 1928
    .local v40, "e":Ljava/net/URISyntaxException;
    :try_start_3
    const-string v2, "FavoritesProvider"

    const-string v3, "Unable to parse intent during makeCopyItemList"

    move-object/from16 v0, v40

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1946
    .end local v40    # "e":Ljava/net/URISyntaxException;
    .end local v47    # "intentString":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1887
    .end local v4    # "columns":[Ljava/lang/String;
    .end local v45    # "i":I
    :catchall_1
    move-exception v2

    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1924
    .restart local v4    # "columns":[Ljava/lang/String;
    .restart local v9    # "id":J
    .restart local v11    # "cmp":Landroid/content/ComponentName;
    .restart local v16    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .restart local v38    # "cmpKey":Lcom/android/launcher3/util/ComponentKey;
    .restart local v45    # "i":I
    .restart local v46    # "intent":Landroid/content/Intent;
    .restart local v47    # "intentString":Ljava/lang/String;
    :cond_3
    :try_start_4
    const-string v2, "FavoritesProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This item is already exist in home : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 1932
    .end local v9    # "id":J
    .end local v11    # "cmp":Landroid/content/ComponentName;
    .end local v16    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v38    # "cmpKey":Lcom/android/launcher3/util/ComponentKey;
    .end local v46    # "intent":Landroid/content/Intent;
    :cond_4
    const/4 v2, 0x0

    :try_start_5
    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1933
    .restart local v9    # "id":J
    new-instance v8, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {v8}, Lcom/android/launcher3/folder/FolderInfo;-><init>()V

    .line 1934
    .local v8, "info":Lcom/android/launcher3/folder/FolderInfo;
    iput-wide v9, v8, Lcom/android/launcher3/folder/FolderInfo;->id:J

    .line 1935
    const-wide/16 v2, -0x64

    iput-wide v2, v8, Lcom/android/launcher3/folder/FolderInfo;->container:J

    .line 1936
    const/4 v2, 0x1

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1937
    const/4 v2, 0x4

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v8, Lcom/android/launcher3/folder/FolderInfo;->color:I

    .line 1938
    const/4 v2, 0x5

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v8, Lcom/android/launcher3/folder/FolderInfo;->options:I

    .line 1939
    move-object/from16 v0, v44

    invoke-virtual {v0, v9, v10, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1942
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 1946
    .end local v8    # "info":Lcom/android/launcher3/folder/FolderInfo;
    .end local v9    # "id":J
    .end local v47    # "intentString":Ljava/lang/String;
    :cond_5
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    .line 1895
    :cond_6
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_0

    .line 1952
    :cond_7
    invoke-virtual/range {v44 .. v44}, Landroid/util/LongSparseArray;->size()I

    move-result v41

    .line 1953
    .local v41, "folderCount":I
    const/16 v48, 0x0

    .local v48, "j":I
    :goto_2
    move/from16 v0, v48

    move/from16 v1, v41

    if-ge v0, v1, :cond_e

    .line 1954
    const/16 v36, 0x0

    .line 1955
    .local v36, "childCount":I
    const-string v5, "container=?"

    .line 1956
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v19, v2

    const/4 v2, 0x1

    const-string v3, "intent"

    aput-object v3, v19, v2

    const/4 v2, 0x2

    const-string v3, "screen"

    aput-object v3, v19, v2

    const/4 v2, 0x3

    const-string v3, "profileId"

    aput-object v3, v19, v2

    .line 1958
    .local v19, "folderChildColumns":[Ljava/lang/String;
    move-object/from16 v0, v44

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    .line 1959
    .local v42, "folderId":Ljava/lang/Long;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .end local v6    # "selectionArg":[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1960
    .restart local v6    # "selectionArg":[Ljava/lang/String;
    sget-object v17, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v18, "favorites"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v39

    .line 1963
    if-eqz v39, :cond_c

    .line 1965
    :cond_8
    :goto_3
    :try_start_6
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1966
    const/4 v2, 0x1

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v47

    .line 1967
    .restart local v47    # "intentString":Ljava/lang/String;
    if-eqz v47, :cond_8

    .line 1969
    const/4 v2, 0x0

    :try_start_7
    move-object/from16 v0, v47

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v46

    .line 1970
    .restart local v46    # "intent":Landroid/content/Intent;
    invoke-virtual/range {v46 .. v46}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1971
    invoke-virtual/range {v46 .. v46}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 1972
    .restart local v11    # "cmp":Landroid/content/ComponentName;
    const/4 v2, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1973
    .restart local v9    # "id":J
    const/4 v2, 0x3

    .line 1974
    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1973
    move-object/from16 v0, v50

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v16

    .line 1976
    .restart local v16    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    new-instance v38, Lcom/android/launcher3/util/ComponentKey;

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-direct {v0, v11, v1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 1977
    .restart local v38    # "cmpKey":Lcom/android/launcher3/util/ComponentKey;
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1978
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 1979
    .local v24, "container":J
    const/4 v2, 0x2

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 1981
    .local v26, "screenId":J
    new-instance v8, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v20, v8

    move-wide/from16 v21, v9

    move-object/from16 v23, v11

    move-object/from16 v28, v16

    invoke-direct/range {v20 .. v28}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>(JLandroid/content/ComponentName;JJLcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 1983
    .local v8, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    .line 1984
    .local v37, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-nez v37, :cond_9

    .line 1985
    new-instance v37, Ljava/util/ArrayList;

    .end local v37    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 1986
    .restart local v37    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p4

    move-object/from16 v1, v37

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1990
    :cond_9
    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1991
    add-int/lit8 v36, v36, 0x1

    .line 1992
    goto/16 :goto_3

    .line 1993
    .end local v8    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v24    # "container":J
    .end local v26    # "screenId":J
    .end local v37    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_a
    const-string v2, "FavoritesProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This item is already exist in home : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_3

    .line 1996
    .end local v9    # "id":J
    .end local v11    # "cmp":Landroid/content/ComponentName;
    .end local v16    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v38    # "cmpKey":Lcom/android/launcher3/util/ComponentKey;
    .end local v46    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v40

    .line 1997
    .restart local v40    # "e":Ljava/net/URISyntaxException;
    :try_start_8
    const-string v2, "FavoritesProvider"

    const-string v3, "Unable to parse intent during makeCopyItemList(folder child)"

    move-object/from16 v0, v40

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_3

    .line 2003
    .end local v40    # "e":Ljava/net/URISyntaxException;
    .end local v47    # "intentString":Ljava/lang/String;
    :catchall_2
    move-exception v2

    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_b
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    .line 2007
    :cond_c
    if-nez v36, :cond_d

    .line 2008
    move-object/from16 v0, v44

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    move-object/from16 v0, v44

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2009
    .local v43, "folderInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v43, :cond_d

    .line 2010
    const-string v2, "FavoritesProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeCopyItemList - remove empty folder : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v43

    iget-object v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    move-object/from16 v0, p3

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2012
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 1953
    .end local v43    # "folderInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_d
    add-int/lit8 v48, v48, 0x1

    goto/16 :goto_2

    .line 2017
    .end local v19    # "folderChildColumns":[Ljava/lang/String;
    .end local v36    # "childCount":I
    .end local v42    # "folderId":Ljava/lang/Long;
    :cond_e
    const-string v5, "container=? AND hidden!=?"

    .line 2018
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    .end local v6    # "selectionArg":[Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v3, -0x66

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 2019
    .restart local v6    # "selectionArg":[Ljava/lang/String;
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v30, v2

    const/4 v2, 0x1

    const-string v3, "intent"

    aput-object v3, v30, v2

    const/4 v2, 0x2

    const-string v3, "profileId"

    aput-object v3, v30, v2

    const/4 v2, 0x3

    const-string v3, "hidden"

    aput-object v3, v30, v2

    .line 2021
    .local v30, "hiddenColumns":[Ljava/lang/String;
    sget-object v28, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v29, "favorites"

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    invoke-virtual/range {v28 .. v35}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v39

    .line 2023
    if-eqz v39, :cond_11

    .line 2025
    :cond_f
    :goto_4
    :try_start_9
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2026
    const/4 v2, 0x1

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result-object v47

    .line 2027
    .restart local v47    # "intentString":Ljava/lang/String;
    if-eqz v47, :cond_f

    .line 2029
    const/4 v2, 0x0

    :try_start_a
    move-object/from16 v0, v47

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v46

    .line 2030
    .restart local v46    # "intent":Landroid/content/Intent;
    invoke-virtual/range {v46 .. v46}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 2031
    invoke-virtual/range {v46 .. v46}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 2032
    .restart local v11    # "cmp":Landroid/content/ComponentName;
    const/4 v2, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2033
    .restart local v9    # "id":J
    const/4 v2, 0x2

    .line 2034
    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2033
    move-object/from16 v0, v50

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v16

    .line 2036
    .restart local v16    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    const-wide/16 v14, -0x1

    .line 2038
    .restart local v14    # "screenRank":J
    new-instance v8, Lcom/android/launcher3/common/base/item/IconInfo;

    const-wide/16 v12, -0x64

    invoke-direct/range {v8 .. v16}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>(JLandroid/content/ComponentName;JJLcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 2040
    .restart local v8    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    const/4 v2, 0x3

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v8, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    .line 2041
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/net/URISyntaxException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4

    .line 2043
    .end local v8    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v9    # "id":J
    .end local v11    # "cmp":Landroid/content/ComponentName;
    .end local v14    # "screenRank":J
    .end local v16    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v46    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v40

    .line 2044
    .restart local v40    # "e":Ljava/net/URISyntaxException;
    :try_start_b
    const-string v2, "FavoritesProvider"

    const-string v3, "Unable to parse intent during makeCopyItemList"

    move-object/from16 v0, v40

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_4

    .line 2050
    .end local v40    # "e":Ljava/net/URISyntaxException;
    .end local v47    # "intentString":Ljava/lang/String;
    :catchall_3
    move-exception v2

    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_10
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    .line 2053
    :cond_11
    return-void
.end method

.method private makeFoldersIdToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1557
    .local p1, "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v2, Lcom/android/launcher3/util/StringJoiner;

    const-string v3, ","

    invoke-direct {v2, v3}, Lcom/android/launcher3/util/StringJoiner;-><init>(Ljava/lang/String;)V

    .line 1558
    .local v2, "joiner":Lcom/android/launcher3/util/StringJoiner;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1559
    .local v0, "folder":J
    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/util/StringJoiner;->append(J)V

    goto :goto_0

    .line 1561
    .end local v0    # "folder":J
    :cond_0
    invoke-virtual {v2}, Lcom/android/launcher3/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private migrateSharedPrefViewTypeForApps(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 7
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "prefsEditor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 2889
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 2890
    const-string v3, "MenuView.ViewType"

    .line 2891
    .local v3, "menuViewType":Ljava/lang/String;
    const-string v1, "AppsController.ViewType"

    .line 2892
    .local v1, "appsViewType":Ljava/lang/String;
    const-string v0, "ALPHABETIC_GRID"

    .line 2893
    .local v0, "alphabeticalGrid":Ljava/lang/String;
    const-string v2, "CUSTOM_GRID"

    .line 2895
    .local v2, "customeGrid":Ljava/lang/String;
    const-string v5, "MenuView.ViewType"

    const/4 v6, 0x0

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2896
    .local v4, "viewType":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v5, "ALPHABETIC_GRID"

    .line 2897
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "CUSTOM_GRID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2898
    :cond_0
    const-string v5, "AppsController.ViewType"

    invoke-interface {p2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2899
    const-string v5, "MenuView.ViewType"

    invoke-interface {p2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2900
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2903
    .end local v0    # "alphabeticalGrid":Ljava/lang/String;
    .end local v1    # "appsViewType":Ljava/lang/String;
    .end local v2    # "customeGrid":Ljava/lang/String;
    .end local v3    # "menuViewType":Ljava/lang/String;
    .end local v4    # "viewType":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private migrateSharedPrefsForApps(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "prefsEditor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 2884
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/model/FavoritesProvider;->migrateSharedPrefViewTypeForApps(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 2885
    return-void
.end method

.method private migrationTable(ZLjava/lang/String;Ljava/lang/String;JZ)V
    .locals 30
    .param p1, "isDaliMigration"    # Z
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "screenTableName"    # Ljava/lang/String;
    .param p4, "userSerial"    # J
    .param p6, "convertAppOrder"    # Z

    .prologue
    .line 246
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    .line 247
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 246
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 249
    .local v22, "prefs":Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 251
    .local v25, "tempTableName":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 252
    .local v17, "escapedTableName":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 253
    .local v18, "escapedTempTableName":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 256
    .local v16, "escapedScreenTableName":Ljava/lang/String;
    const/16 v21, 0x0

    .line 258
    .local v21, "pageCount":I
    const/16 v26, 0x0

    .line 260
    .local v26, "ti":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->tableExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 262
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/common/model/FavoritesProvider;->createFavoritesTable(JLjava/lang/String;)V

    .line 265
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v14, "colList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRAGMA table_info("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 267
    if-eqz v26, :cond_2

    .line 268
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 270
    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 273
    :cond_1
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 277
    :cond_2
    if-eqz p1, :cond_5

    .line 278
    const-string v4, "containerId"

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 279
    const-string v4, "preview"

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 280
    const-string v4, "show"

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 281
    const-string v4, "iconMode"

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 282
    const-string v4, "isSystemApp"

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 292
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT INTO "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 293
    .local v24, "sql":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 294
    .local v15, "cols":Ljava/lang/StringBuffer;
    const-string v4, ""

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    const/4 v13, 0x0

    .line 297
    .local v13, "colCnt":I
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 298
    .local v12, "col":Ljava/lang/String;
    invoke-virtual {v15, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    add-int/lit8 v13, v13, 0x1

    .line 301
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v13, v5, :cond_3

    .line 302
    const-string v5, ", "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 388
    .end local v12    # "col":Ljava/lang/String;
    .end local v13    # "colCnt":I
    .end local v14    # "colList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "cols":Ljava/lang/StringBuffer;
    .end local v24    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v4

    if-eqz v26, :cond_4

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 389
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v4

    .line 285
    .restart local v14    # "colList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    :try_start_1
    const-string v4, "iconMovieUri"

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 286
    const-string v4, "secret"

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 288
    const-string v4, "timeStamp"

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    .restart local v13    # "colCnt":I
    .restart local v15    # "cols":Ljava/lang/StringBuffer;
    .restart local v24    # "sql":Ljava/lang/String;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SELECT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 310
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 313
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DROP TABLE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 314
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ALTER TABLE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " RENAME TO "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 321
    .end local v13    # "colCnt":I
    .end local v14    # "colList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "cols":Ljava/lang/StringBuffer;
    .end local v24    # "sql":Ljava/lang/String;
    :goto_2
    if-eqz p6, :cond_7

    .line 322
    const-string v4, "Workspace.CellX"

    const/4 v5, 0x5

    move-object/from16 v0, v22

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/android/launcher3/common/model/FavoritesProvider;->convertAppsTable(Ljava/lang/String;I)V

    .line 326
    :cond_7
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v29

    .line 327
    .local v29, "widgets":Landroid/appwidget/AppWidgetManager;
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v28, "widgetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Long;>;>;"
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "appWidgetId"

    aput-object v7, v6, v5

    const-string v7, "appWidgetId > 0"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p2

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 331
    if-eqz v26, :cond_b

    .line 332
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 334
    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v23

    .line 335
    .local v23, "provider":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v23, :cond_9

    .line 336
    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_9
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_8

    .line 340
    .end local v23    # "provider":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_a
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 343
    :cond_b
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/Pair;

    .line 344
    .local v20, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Long;>;"
    const-string v6, "FavoritesProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " widget added."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SET appWidgetProvider=? WHERE appWidgetId=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v27

    .line 348
    .local v27, "update":Landroid/database/sqlite/SQLiteStatement;
    const/4 v6, 0x1

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v6, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 349
    const/4 v6, 0x2

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, v27

    invoke-virtual {v0, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 350
    invoke-virtual/range {v27 .. v27}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 351
    invoke-virtual/range {v27 .. v27}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto/16 :goto_3

    .line 316
    .end local v20    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Long;>;"
    .end local v27    # "update":Landroid/database/sqlite/SQLiteStatement;
    .end local v28    # "widgetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Long;>;>;"
    .end local v29    # "widgets":Landroid/appwidget/AppWidgetManager;
    :cond_c
    const-string v4, "FavoritesProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no table exist : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/common/model/FavoritesProvider;->createFavoritesTable(JLjava/lang/String;)V

    goto/16 :goto_2

    .line 354
    .restart local v28    # "widgetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Long;>;>;"
    .restart local v29    # "widgets":Landroid/appwidget/AppWidgetManager;
    :cond_d
    if-eqz p1, :cond_10

    .line 355
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    const-string v5, "pagesettings.db"

    invoke-virtual {v4, v5}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 356
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    const-string v5, "widgets.db"

    invoke-virtual {v4, v5}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 358
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/common/model/FavoritesProvider;->mDaliPageCnt:I

    add-int/lit8 v21, v4, 0x1

    .line 373
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->tableExists(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 374
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->createScreensTable(Ljava/lang/String;)V

    .line 377
    :cond_f
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_5
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_11

    .line 378
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT INTO "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "screenRank"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") VALUES ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ");"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 377
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 360
    .end local v19    # "i":I
    :cond_10
    const-string v4, "screencount"

    const/4 v5, 0x5

    move-object/from16 v0, v22

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 362
    const-string v4, "screencount.briefing"

    const/4 v5, -0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_e

    .line 363
    add-int/lit8 v21, v21, -0x1

    .line 364
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPDATE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SET "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "screen"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "screen"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-1 WHERE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "container"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, -0x64

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 385
    .restart local v19    # "i":I
    :cond_11
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPDATE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SET RESTORED=0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    if-eqz v26, :cond_12

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_12

    .line 389
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 393
    :cond_12
    return-void
.end method

.method private migrationTableForEasyMode(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 29
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "screenTableName"    # Ljava/lang/String;
    .param p3, "userSerial"    # J

    .prologue
    .line 398
    const/16 v16, 0x1

    .line 401
    .local v16, "contactPlus":I
    const-string v5, "favorites_easy"

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v5}, Lcom/android/launcher3/common/model/FavoritesProvider;->createFavoritesTable(JLjava/lang/String;)V

    .line 402
    const-string v5, "workspaceScreens_easy"

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher3/common/model/FavoritesProvider;->createScreensTable(Ljava/lang/String;)V

    .line 405
    new-instance v19, Ljava/io/File;

    sget-object v5, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    const-string v6, "easylauncher.db"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    const-string v6, "easylauncher.db"

    move-object/from16 v0, v19

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .local v19, "file":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 407
    sget-object v5, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    const-string v6, "easylauncher.db"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 414
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->movePrefFileForEasy()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 415
    sget-object v5, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    const-string v6, "com.sec.android.app.easylauncher.prefs"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v26

    .line 418
    .local v26, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "contact1_onoff"

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 419
    const-string v5, "contact1_onoff"

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_7

    const/16 v16, 0x1

    .line 421
    :cond_0
    :goto_0
    new-instance v21, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/shared_prefs/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "com.sec.android.app.easylauncher.prefs.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 423
    .local v21, "prefFile":Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    .line 426
    .end local v21    # "prefFile":Ljava/io/File;
    .end local v26    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 427
    const/16 v27, 0x0

    .line 431
    .local v27, "ti":Landroid/database/Cursor;
    :try_start_0
    const-string v5, "favorites"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/launcher3/common/model/FavoritesProvider;->tableExistsForEasy(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 432
    const-wide/16 v24, 0x0

    .line 433
    .local v24, "pageCount":J
    const-wide/16 v22, -0x1

    .line 436
    .local v22, "maxId":J
    const-string v5, "favorites"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 437
    .end local v27    # "ti":Landroid/database/Cursor;
    .local v7, "ti":Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 438
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move/from16 v9, v16

    move-wide/from16 v10, p3

    .line 440
    invoke-direct/range {v6 .. v11}, Lcom/android/launcher3/common/model/FavoritesProvider;->addDataToEasyTable(Landroid/database/Cursor;Ljava/lang/String;IJ)V

    .line 441
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 443
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 447
    :cond_4
    sget-object v8, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x1

    new-array v10, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "MAX(screen)"

    aput-object v6, v10, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 450
    if-nez v7, :cond_8

    .line 451
    const-string v5, "FavoritesProvider"

    const-string v6, "easylauncher converting error : NPE when getting pagecount"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 496
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 498
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_5

    .line 499
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 502
    :cond_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 504
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v7    # "ti":Landroid/database/Cursor;
    .end local v22    # "maxId":J
    .end local v24    # "pageCount":J
    :goto_1
    return-void

    .line 409
    :cond_6
    const-string v5, "FavoritesProvider"

    const-string v6, "EASY_LAUNCHER_DB is not exist"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 419
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v26    # "prefs":Landroid/content/SharedPreferences;
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 455
    .end local v26    # "prefs":Landroid/content/SharedPreferences;
    .restart local v7    # "ti":Landroid/database/Cursor;
    .restart local v22    # "maxId":J
    .restart local v24    # "pageCount":J
    :cond_8
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 456
    const/4 v5, 0x0

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 458
    :cond_9
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 461
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_2
    move/from16 v0, v20

    int-to-long v8, v0

    cmp-long v5, v8, v24

    if-gtz v5, :cond_a

    .line 464
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 465
    .local v17, "contentValues":Landroid/content/ContentValues;
    const-string v5, "_id"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 466
    const-string v5, "screenRank"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 467
    sget-object v5, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 461
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 471
    .end local v17    # "contentValues":Landroid/content/ContentValues;
    :cond_a
    sget-object v8, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x1

    new-array v10, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "MAX(_id)"

    aput-object v6, v10, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 474
    if-nez v7, :cond_c

    .line 475
    const-string v5, "FavoritesProvider"

    const-string v6, "easylauncher converting error : NPE when getting max id"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 496
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 498
    if-eqz v7, :cond_b

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_b

    .line 499
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 502
    :cond_b
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 479
    :cond_c
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 480
    const/4 v5, 0x0

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 482
    :cond_d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 484
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/common/model/FavoritesProvider;->addAppsButton(Ljava/lang/String;J)V

    .line 486
    rsub-int/lit8 v5, v16, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher3/common/model/FavoritesProvider;->setDefaultHomeForEasy(I)V

    .line 492
    .end local v20    # "i":I
    .end local v22    # "maxId":J
    .end local v24    # "pageCount":J
    :goto_3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 496
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 498
    if-eqz v7, :cond_e

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_e

    .line 499
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 502
    :cond_e
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    .line 488
    .end local v7    # "ti":Landroid/database/Cursor;
    .restart local v27    # "ti":Landroid/database/Cursor;
    :cond_f
    :try_start_4
    const-string v5, "FavoritesProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no table exist : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/common/model/FavoritesProvider;->createFavoritesTable(JLjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v7, v27

    .end local v27    # "ti":Landroid/database/Cursor;
    .restart local v7    # "ti":Landroid/database/Cursor;
    goto :goto_3

    .line 493
    .end local v7    # "ti":Landroid/database/Cursor;
    .restart local v27    # "ti":Landroid/database/Cursor;
    :catch_0
    move-exception v18

    move-object/from16 v7, v27

    .line 494
    .end local v27    # "ti":Landroid/database/Cursor;
    .restart local v7    # "ti":Landroid/database/Cursor;
    .local v18, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    const-string v5, "FavoritesProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EasyTable migration error : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 496
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 498
    if-eqz v7, :cond_10

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_10

    .line 499
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 502
    :cond_10
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    .line 496
    .end local v7    # "ti":Landroid/database/Cursor;
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v27    # "ti":Landroid/database/Cursor;
    :catchall_0
    move-exception v5

    move-object/from16 v7, v27

    .end local v27    # "ti":Landroid/database/Cursor;
    .restart local v7    # "ti":Landroid/database/Cursor;
    :goto_5
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 498
    if-eqz v7, :cond_11

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_11

    .line 499
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 502
    :cond_11
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    throw v5

    .line 496
    :catchall_1
    move-exception v5

    goto :goto_5

    .line 493
    :catch_1
    move-exception v18

    goto :goto_4
.end method

.method private movePrefFileForEasy()Z
    .locals 7

    .prologue
    .line 2863
    const/4 v2, 0x0

    .line 2866
    .local v2, "result":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/cache/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "com.sec.android.app.easylauncher.prefs.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2868
    .local v3, "source":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/shared_prefs/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "com.sec.android.app.easylauncher.prefs.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2871
    .local v0, "dest":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2872
    .local v4, "sourceFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2874
    .local v1, "destFile":Ljava/io/File;
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 2875
    const/4 v2, 0x1

    .line 2876
    invoke-virtual {v4, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2879
    :cond_0
    return v2
.end method

.method private prevMigrationForDali()V
    .locals 10

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 140
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ALTER TABLE favorites ADD COLUMN screen INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 142
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    const-string v4, "pagesettings.db"

    .line 143
    invoke-virtual {v3, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 146
    .local v2, "pagesettingsDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "SELECT _id, pageOrder FROM page_settings ORDER BY pageOrder"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_2

    .line 148
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mDaliPageCnt:I

    .line 149
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE favorites SET screen=? WHERE containerId=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 151
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    .line 150
    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 181
    .end local v2    # "pagesettingsDB":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v3, "FavoritesProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prevMigrationForDali() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 185
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 188
    .end local v1    # "e":Landroid/database/SQLException;
    :cond_0
    :goto_1
    return-void

    .line 153
    .restart local v2    # "pagesettingsDB":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 155
    :cond_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 158
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE favorites SET screen=cellY*3+cellX WHERE container=3"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 159
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE favorites SET screen=cellX WHERE container=1"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE favorites SET container=-100 WHERE container=0"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 163
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE favorites SET container=-101 WHERE container=1"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 164
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE favorites SET container=containerId WHERE container=3"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 166
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE favorites SET itemType=itemType-1"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 168
    const-string v3, "appOrder"

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/model/FavoritesProvider;->tableExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 171
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ALTER TABLE appOrder ADD COLUMN folderId INTEGER NOT NULL DEFAULT -1"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 172
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ALTER TABLE appOrder ADD COLUMN screen INTEGER NOT NULL DEFAULT -1"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 173
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ALTER TABLE appOrder ADD COLUMN cell INTEGER NOT NULL DEFAULT -1"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 176
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE appOrder SET folderId=containerId WHERE container=3"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 177
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE appOrder SET screen=pos WHERE container=3"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE appOrder SET screen=containerId WHERE container=2"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 179
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE appOrder SET cell=pos WHERE container=2"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    :cond_3
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 185
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 184
    .end local v2    # "pagesettingsDB":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 185
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3
.end method

.method private removeAppShortcutForHomeOnly()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x1

    const/4 v7, 0x0

    .line 1677
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1678
    .local v8, "appShortcutIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v3, "itemType=?"

    .line 1679
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 1681
    .local v4, "selectionArg":[Ljava/lang/String;
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "favorites_homeOnly"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v6, "_id"

    aput-object v6, v2, v7

    const-string v6, "intent"

    aput-object v6, v2, v12

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1684
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 1686
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1688
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    .line 1689
    .local v11, "intent":Landroid/content/Intent;
    invoke-static {v11}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1690
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1692
    .end local v11    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v10

    .line 1693
    .local v10, "e":Ljava/net/URISyntaxException;
    :try_start_2
    const-string v0, "FavoritesProvider"

    const-string v1, "Unable to parse intent during removeAppShortcutForHomeOnly"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1698
    .end local v10    # "e":Ljava/net/URISyntaxException;
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1702
    :cond_2
    const-string v0, "FavoritesProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeAppShortcutForHomeOnly size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1704
    const-string v0, "FavoritesProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove AppShortcut "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v2, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "favorites_homeOnly"

    const-string v2, "_id"

    invoke-static {v2, v8}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1708
    :cond_3
    return-void
.end method

.method private removeDuplicateItemForHomeOnly()Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1711
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1712
    .local v14, "duplicateItemIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1713
    .local v12, "cmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v20

    .line 1714
    .local v20, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    const-string v5, "itemType=?"

    .line 1715
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1716
    .local v6, "selectionArg":[Ljava/lang/String;
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "intent"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "profileId"

    aput-object v3, v4, v2

    .line 1718
    .local v4, "columns":[Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "favorites_homeOnly"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1721
    .local v13, "cursor":Landroid/database/Cursor;
    if-eqz v13, :cond_3

    .line 1723
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 1725
    const/4 v2, 0x1

    :try_start_1
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v18

    .line 1726
    .local v18, "intent":Landroid/content/Intent;
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1727
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    .line 1728
    .local v10, "cmp":Landroid/content/ComponentName;
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1729
    .local v16, "id":J
    const/4 v2, 0x2

    .line 1730
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1729
    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v19

    .line 1732
    .local v19, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    new-instance v11, Lcom/android/launcher3/util/ComponentKey;

    move-object/from16 v0, v19

    invoke-direct {v11, v10, v0}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 1733
    .local v11, "cmpKey":Lcom/android/launcher3/util/ComponentKey;
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1734
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1739
    .end local v10    # "cmp":Landroid/content/ComponentName;
    .end local v11    # "cmpKey":Lcom/android/launcher3/util/ComponentKey;
    .end local v16    # "id":J
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v19    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :catch_0
    move-exception v15

    .line 1740
    .local v15, "e":Ljava/net/URISyntaxException;
    :try_start_2
    const-string v2, "FavoritesProvider"

    const-string v3, "Unable to parse intent during removeDuplicateItemForHomeOnly"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1745
    .end local v15    # "e":Ljava/net/URISyntaxException;
    :catchall_0
    move-exception v2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1736
    .restart local v10    # "cmp":Landroid/content/ComponentName;
    .restart local v11    # "cmpKey":Lcom/android/launcher3/util/ComponentKey;
    .restart local v16    # "id":J
    .restart local v18    # "intent":Landroid/content/Intent;
    .restart local v19    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_1
    :try_start_3
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1745
    .end local v10    # "cmp":Landroid/content/ComponentName;
    .end local v11    # "cmpKey":Lcom/android/launcher3/util/ComponentKey;
    .end local v16    # "id":J
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v19    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1749
    :cond_3
    const-string v2, "FavoritesProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeDuplicateItemForHomeOnly size "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1751
    const-string v2, "FavoritesProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove duplicate item "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", "

    invoke-static {v7, v14}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "favorites_homeOnly"

    const-string v7, "_id"

    invoke-static {v7, v14}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1755
    :cond_4
    return-object v12
.end method

.method private setDefaultHomeForEasy(I)V
    .locals 2
    .param p1, "defaultPage"    # I

    .prologue
    .line 2858
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    const-string v1, "com.sec.android.app.launcher.homeeasy.defaultpage.prefs"

    invoke-static {v0, p1, v1}, Lcom/android/launcher3/Utilities;->setHomeDefaultPageKey(Landroid/content/Context;ILjava/lang/String;)V

    .line 2860
    return-void
.end method

.method private sortAlphabeticalOrder(Ljava/util/ArrayList;Landroid/util/LongSparseArray;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 2057
    .local p1, "addItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p2, "folderChildList":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;>;"
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v5

    .line 2060
    .local v5, "iconCache":Lcom/android/launcher3/common/model/IconCache;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2061
    .local v6, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v9, v6, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v9, :cond_0

    .line 2062
    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v6    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/model/IconCache;->updateTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_0

    .line 2066
    :cond_1
    new-instance v0, Lcom/android/launcher3/common/model/FavoritesProvider$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/model/FavoritesProvider$2;-><init>(Lcom/android/launcher3/common/model/FavoritesProvider;)V

    .line 2087
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2089
    invoke-virtual {p2}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 2090
    .local v1, "folderChildCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_5

    .line 2091
    invoke-virtual {p2, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 2093
    .local v2, "folderId":J
    invoke-virtual {p2, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 2094
    .local v7, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v7, :cond_4

    .line 2096
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2097
    .restart local v6    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v9, v6, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v9, :cond_2

    .line 2098
    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v6    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/model/IconCache;->updateTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_2

    .line 2101
    :cond_3
    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2090
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2104
    .end local v2    # "folderId":J
    .end local v7    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_5
    return-void
.end method

.method private tableExistsForEasy(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 1048
    if-nez p1, :cond_0

    .line 1049
    const/4 v12, 0x0

    .line 1065
    :goto_0
    return v12

    .line 1052
    :cond_0
    const/4 v12, 0x0

    .line 1053
    .local v12, "exist":Z
    const/4 v1, 0x1

    const-string v2, "sqlite_master"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "tbl_name"

    aput-object v4, v3, v0

    const-string v4, "tbl_name = ?"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v11

    .line 1057
    .local v11, "c":Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 1059
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    const/4 v12, 0x1

    .line 1061
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1064
    :cond_1
    const-string v0, "FavoritesProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tableExists tableName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1059
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 1061
    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private updateHideItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "deleteItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, "hideDesktopItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p3, "hideAppsItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 1451
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1452
    const-string v1, "FavoritesProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove hideItmes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-static {v3, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "favorites"

    const-string v3, "_id"

    .line 1454
    invoke-static {v3, p1}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 1453
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1457
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1458
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "hidden"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1459
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1460
    const-string v1, "FavoritesProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update hideItmes for Apps "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-static {v3, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    const-string v1, "container"

    const/16 v2, -0x66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1462
    const-string v1, "screen"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1463
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "favorites"

    const-string v3, "_id"

    .line 1464
    invoke-static {v3, p3}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 1463
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1466
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1467
    const-string v1, "FavoritesProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update hideItmes for Home"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-static {v3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    const-string v1, "container"

    const/16 v2, -0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1469
    const-string v1, "screen"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1470
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "favorites"

    const-string v3, "_id"

    .line 1471
    invoke-static {v3, p2}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 1470
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1473
    :cond_2
    return-void
.end method

.method private upgradeTable(JII)Z
    .locals 1
    .param p1, "userSerial"    # J
    .param p3, "oldVersion"    # I
    .param p4, "newVersion"    # I

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 240
    .local v0, "ret":Z
    return v0
.end method


# virtual methods
.method public applyHideItem(Ljava/util/Set;)V
    .locals 51
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1304
    .local p1, "hideItems":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v37, Ljava/util/HashMap;

    invoke-direct/range {v37 .. v37}, Ljava/util/HashMap;-><init>()V

    .line 1305
    .local v37, "hideItemsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    .line 1306
    .local v46, "item":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v37

    move-object/from16 v1, v46

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1309
    .end local v46    # "item":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1311
    const/4 v4, 0x5

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "container"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    const-string v5, "intent"

    aput-object v5, v6, v4

    const/4 v4, 0x3

    const-string v5, "profileId"

    aput-object v5, v6, v4

    const/4 v4, 0x4

    const-string v5, "hidden"

    aput-object v5, v6, v4

    .line 1315
    .local v6, "columns":[Ljava/lang/String;
    const-string v7, "itemType=?"

    .line 1316
    .local v7, "selection":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1317
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .line 1320
    .local v8, "selectionArg":[Ljava/lang/String;
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "favorites"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 1321
    .local v22, "c":Landroid/database/Cursor;
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 1322
    .local v27, "deleteItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 1323
    .local v36, "hideDesktopItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 1324
    .local v35, "hideAppsItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v29, Landroid/util/LongSparseArray;

    invoke-direct/range {v29 .. v29}, Landroid/util/LongSparseArray;-><init>()V

    .line 1326
    .local v29, "folderItemList":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1327
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v45, 0x1

    .line 1329
    .local v45, "isHomeOnly":Z
    :goto_1
    if-eqz v22, :cond_9

    .line 1331
    :try_start_0
    const-string v4, "_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 1332
    .local v39, "idIndex":I
    const-string v4, "container"

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 1333
    .local v26, "containerIndex":I
    const-string v4, "intent"

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v44

    .line 1334
    .local v44, "intentIndex":I
    const-string v4, "profileId"

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v50

    .line 1335
    .local v50, "profileIndex":I
    const-string v4, "hidden"

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 1337
    .local v34, "hiddenIndex":I
    :cond_1
    :goto_2
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1338
    move-object/from16 v0, v22

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v43

    .line 1339
    .local v43, "intentDescription":Ljava/lang/String;
    if-eqz v43, :cond_1

    .line 1345
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, v43

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v42

    .line 1351
    .local v42, "intent":Landroid/content/Intent;
    :try_start_2
    move-object/from16 v0, v22

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 1352
    .local v40, "id":J
    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 1353
    .local v24, "container":J
    move-object/from16 v0, v22

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v48

    .line 1354
    .local v48, "profile":J
    move-object/from16 v0, v22

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 1356
    .local v33, "hidden":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v42 .. v42}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1357
    invoke-static/range {v48 .. v49}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1358
    .local v23, "componentAndProfile":Ljava/lang/String;
    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1359
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    if-nez v33, :cond_1

    .line 1361
    if-eqz v45, :cond_3

    .line 1362
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1381
    .end local v23    # "componentAndProfile":Ljava/lang/String;
    .end local v24    # "container":J
    .end local v26    # "containerIndex":I
    .end local v33    # "hidden":I
    .end local v34    # "hiddenIndex":I
    .end local v39    # "idIndex":I
    .end local v40    # "id":J
    .end local v42    # "intent":Landroid/content/Intent;
    .end local v43    # "intentDescription":Ljava/lang/String;
    .end local v44    # "intentIndex":I
    .end local v48    # "profile":J
    .end local v50    # "profileIndex":I
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1445
    :catchall_1
    move-exception v4

    :goto_3
    sget-object v5, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 1327
    .end local v45    # "isHomeOnly":Z
    :cond_2
    const/16 v45, 0x0

    goto/16 :goto_1

    .line 1346
    .restart local v26    # "containerIndex":I
    .restart local v34    # "hiddenIndex":I
    .restart local v39    # "idIndex":I
    .restart local v43    # "intentDescription":Ljava/lang/String;
    .restart local v44    # "intentIndex":I
    .restart local v45    # "isHomeOnly":Z
    .restart local v50    # "profileIndex":I
    :catch_0
    move-exception v28

    .line 1347
    .local v28, "e":Ljava/net/URISyntaxException;
    :try_start_4
    const-string v4, "FavoritesProvider"

    const-string v5, "Unable to parse intent"

    move-object/from16 v0, v28

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1364
    .end local v28    # "e":Ljava/net/URISyntaxException;
    .restart local v23    # "componentAndProfile":Ljava/lang/String;
    .restart local v24    # "container":J
    .restart local v33    # "hidden":I
    .restart local v40    # "id":J
    .restart local v42    # "intent":Landroid/content/Intent;
    .restart local v48    # "profile":J
    :cond_3
    const-wide/16 v4, -0x64

    cmp-long v4, v24, v4

    if-eqz v4, :cond_4

    const-wide/16 v4, -0x65

    cmp-long v4, v24, v4

    if-nez v4, :cond_5

    .line 1366
    :cond_4
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1367
    :cond_5
    const-wide/16 v4, -0x66

    cmp-long v4, v24, v4

    if-nez v4, :cond_6

    .line 1368
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1370
    :cond_6
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v29

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto/16 :goto_2

    .line 1375
    :cond_7
    const/4 v4, 0x2

    move/from16 v0, v33

    if-ne v0, v4, :cond_1

    .line 1376
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 1381
    .end local v23    # "componentAndProfile":Ljava/lang/String;
    .end local v24    # "container":J
    .end local v33    # "hidden":I
    .end local v40    # "id":J
    .end local v42    # "intent":Landroid/content/Intent;
    .end local v43    # "intentDescription":Ljava/lang/String;
    .end local v48    # "profile":J
    :cond_8
    :try_start_5
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1385
    .end local v26    # "containerIndex":I
    .end local v34    # "hiddenIndex":I
    .end local v39    # "idIndex":I
    .end local v44    # "intentIndex":I
    .end local v50    # "profileIndex":I
    :cond_9
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 1386
    .local v31, "foldersInApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1387
    .local v32, "foldersInHome":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x1

    new-array v11, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v11, v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1390
    .end local v6    # "columns":[Ljava/lang/String;
    .local v11, "columns":[Ljava/lang/String;
    :try_start_6
    const-string v7, "itemType=? AND container=?"

    .line 1391
    const/4 v4, 0x2

    new-array v13, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 1392
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v13, v4

    const/4 v4, 0x1

    const/16 v5, -0x66

    .line 1393
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v13, v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 1395
    .end local v8    # "selectionArg":[Ljava/lang/String;
    .local v13, "selectionArg":[Ljava/lang/String;
    :try_start_7
    sget-object v9, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "favorites"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v7

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result-object v22

    .line 1396
    if-eqz v22, :cond_b

    .line 1398
    :try_start_8
    const-string v4, "_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 1399
    .restart local v39    # "idIndex":I
    :goto_4
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1400
    move-object/from16 v0, v22

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 1401
    .restart local v40    # "id":J
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    .line 1405
    .end local v39    # "idIndex":I
    .end local v40    # "id":J
    :catchall_2
    move-exception v4

    :try_start_9
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1445
    :catchall_3
    move-exception v4

    move-object v8, v13

    .end local v13    # "selectionArg":[Ljava/lang/String;
    .restart local v8    # "selectionArg":[Ljava/lang/String;
    move-object v6, v11

    .end local v11    # "columns":[Ljava/lang/String;
    .restart local v6    # "columns":[Ljava/lang/String;
    goto/16 :goto_3

    .line 1405
    .end local v6    # "columns":[Ljava/lang/String;
    .end local v8    # "selectionArg":[Ljava/lang/String;
    .restart local v11    # "columns":[Ljava/lang/String;
    .restart local v13    # "selectionArg":[Ljava/lang/String;
    .restart local v39    # "idIndex":I
    :cond_a
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1409
    .end local v39    # "idIndex":I
    :cond_b
    const-string v7, "itemType=? AND (container=? OR container=?)"

    .line 1411
    const/4 v4, 0x3

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 1412
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    const/4 v4, 0x1

    const/16 v5, -0x64

    .line 1413
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    const/4 v4, 0x2

    const/16 v5, -0x65

    .line 1414
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1416
    .end local v13    # "selectionArg":[Ljava/lang/String;
    .restart local v8    # "selectionArg":[Ljava/lang/String;
    :try_start_a
    sget-object v14, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v15, "favorites"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v11

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    invoke-virtual/range {v14 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-result-object v22

    .line 1417
    if-eqz v22, :cond_d

    .line 1419
    :try_start_b
    const-string v4, "_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 1420
    .restart local v39    # "idIndex":I
    :goto_5
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1421
    move-object/from16 v0, v22

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 1422
    .restart local v40    # "id":J
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_5

    .line 1425
    .end local v39    # "idIndex":I
    .end local v40    # "id":J
    :catchall_4
    move-exception v4

    :try_start_c
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1445
    :catchall_5
    move-exception v4

    move-object v6, v11

    .end local v11    # "columns":[Ljava/lang/String;
    .restart local v6    # "columns":[Ljava/lang/String;
    goto/16 :goto_3

    .line 1425
    .end local v6    # "columns":[Ljava/lang/String;
    .restart local v11    # "columns":[Ljava/lang/String;
    .restart local v39    # "idIndex":I
    :cond_c
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1429
    .end local v39    # "idIndex":I
    :cond_d
    invoke-virtual/range {v29 .. v29}, Landroid/util/LongSparseArray;->size()I

    move-result v30

    .line 1430
    .local v30, "folderListSize":I
    const/16 v38, 0x0

    .local v38, "i":I
    :goto_6
    move/from16 v0, v38

    move/from16 v1, v30

    if-ge v0, v1, :cond_10

    .line 1431
    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    .line 1432
    .local v47, "key":Ljava/lang/Long;
    invoke-virtual/range {v47 .. v47}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    .line 1433
    .local v24, "container":Ljava/lang/Long;
    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1434
    move-object/from16 v0, v35

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1430
    :cond_e
    :goto_7
    add-int/lit8 v38, v38, 0x1

    goto :goto_6

    .line 1435
    :cond_f
    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1436
    move-object/from16 v0, v27

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1440
    .end local v24    # "container":Ljava/lang/Long;
    .end local v47    # "key":Ljava/lang/Long;
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v36

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/common/model/FavoritesProvider;->updateHideItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1441
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v45

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->insertRemainHideItems(Ljava/util/HashMap;Z)V

    .line 1443
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 1445
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1447
    return-void
.end method

.method checkChangedComponentExist()V
    .locals 29

    .prologue
    .line 910
    const/16 v27, 0x0

    .line 912
    .local v27, "versionName":Ljava/lang/String;
    :try_start_0
    sget-object v5, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    sget-object v8, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v20

    .line 913
    .local v20, "info":Landroid/content/pm/PackageInfo;
    if-eqz v20, :cond_0

    .line 914
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v27, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    .end local v20    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    const-string v23, "checkChangedComponentVersion"

    .line 921
    .local v23, "prefsKey":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 922
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "_HomeOnly"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 925
    :cond_1
    sget-object v5, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    .line 926
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 925
    invoke-virtual {v5, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 927
    .local v22, "prefs":Landroid/content/SharedPreferences;
    const/4 v5, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 929
    .local v24, "prevVersionName":Ljava/lang/String;
    const-string v5, "FavoritesProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkChangedComponentExist PREF_KEY : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " prevVersionName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    if-eqz v27, :cond_3

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 932
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadChangedComponent()Ljava/util/HashMap;

    move-result-object v14

    .line 933
    .local v14, "changedList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v5

    const/4 v5, 0x1

    const-string v8, "intent"

    aput-object v8, v6, v5

    .line 935
    .local v6, "projection":[Ljava/lang/String;
    invoke-virtual {v14}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 936
    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_2
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 937
    .local v11, "before":Ljava/lang/String;
    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 939
    .local v10, "after":Ljava/lang/String;
    new-instance v13, Landroid/util/LongSparseArray;

    invoke-direct {v13}, Landroid/util/LongSparseArray;-><init>()V

    .line 940
    .local v13, "changedItems":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/String;>;"
    sget-object v5, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 941
    .local v4, "cr":Landroid/content/ContentResolver;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "intent like \'%"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "%\'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 942
    .local v7, "where":Ljava/lang/String;
    sget-object v5, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 944
    .local v12, "c":Landroid/database/Cursor;
    if-nez v12, :cond_4

    .line 945
    const-string v5, "FavoritesProvider"

    const-string v8, "checkChangedComponentExist cursor is null"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    .end local v4    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "projection":[Ljava/lang/String;
    .end local v7    # "where":Ljava/lang/String;
    .end local v10    # "after":Ljava/lang/String;
    .end local v11    # "before":Ljava/lang/String;
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v13    # "changedItems":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/String;>;"
    .end local v14    # "changedList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :goto_1
    return-void

    .line 916
    .end local v22    # "prefs":Landroid/content/SharedPreferences;
    .end local v23    # "prefsKey":Ljava/lang/String;
    .end local v24    # "prevVersionName":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 917
    .local v15, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "FavoritesProvider"

    const-string v8, "checkChangedComponentExist NameNotFoundException"

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 952
    .end local v15    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "cr":Landroid/content/ContentResolver;
    .restart local v6    # "projection":[Ljava/lang/String;
    .restart local v7    # "where":Ljava/lang/String;
    .restart local v10    # "after":Ljava/lang/String;
    .restart local v11    # "before":Ljava/lang/String;
    .restart local v12    # "c":Landroid/database/Cursor;
    .restart local v13    # "changedItems":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/String;>;"
    .restart local v14    # "changedList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "prefs":Landroid/content/SharedPreferences;
    .restart local v23    # "prefsKey":Ljava/lang/String;
    .restart local v24    # "prevVersionName":Ljava/lang/String;
    :cond_4
    :goto_2
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 953
    const/4 v5, 0x0

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 954
    .local v18, "id":J
    const/4 v5, 0x1

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    .line 955
    .local v21, "intent":Ljava/lang/String;
    const-wide/16 v8, 0x0

    cmp-long v5, v18, v8

    if-lez v5, :cond_4

    .line 956
    move-wide/from16 v0, v18

    move-object/from16 v2, v21

    invoke-virtual {v13, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 960
    .end local v18    # "id":J
    .end local v21    # "intent":Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_5

    .line 961
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v5

    .line 960
    :cond_6
    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_7

    .line 961
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 966
    :cond_7
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 967
    .local v26, "values":Landroid/content/ContentValues;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_3
    invoke-virtual {v13}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    move/from16 v0, v17

    if-ge v0, v5, :cond_2

    .line 968
    invoke-virtual/range {v26 .. v26}, Landroid/content/ContentValues;->clear()V

    .line 969
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v18

    .line 970
    .restart local v18    # "id":J
    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 971
    .restart local v21    # "intent":Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v25

    .line 972
    .local v25, "uri":Landroid/net/Uri;
    const-string v5, "intent"

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1, v5, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 975
    const-string v5, "FavoritesProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Changed component updated : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 980
    .end local v4    # "cr":Landroid/content/ContentResolver;
    .end local v7    # "where":Ljava/lang/String;
    .end local v10    # "after":Ljava/lang/String;
    .end local v11    # "before":Ljava/lang/String;
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v13    # "changedItems":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/String;>;"
    .end local v17    # "i":I
    .end local v18    # "id":J
    .end local v21    # "intent":Ljava/lang/String;
    .end local v25    # "uri":Landroid/net/Uri;
    .end local v26    # "values":Landroid/content/ContentValues;
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/launcher3/common/model/FavoritesProvider;->changePackageForManagedProfile(Ljava/util/HashMap;)V

    .line 982
    :cond_9
    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 983
    .local v16, "editor":Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 984
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1
.end method

.method public checkId(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 2262
    const-string v1, "_id"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 2263
    .local v0, "id":Ljava/lang/Long;
    if-nez v0, :cond_1

    .line 2275
    :cond_0
    :goto_0
    return-void

    .line 2266
    :cond_1
    const-string v1, "workspaceScreens"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2267
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxScreenId:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 2268
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxScreenId:J

    goto :goto_0

    .line 2271
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxItemId:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 2272
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxItemId:J

    goto :goto_0
.end method

.method public checkTable()Z
    .locals 7

    .prologue
    .line 824
    invoke-direct {p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->getColumnList()Ljava/util/ArrayList;

    move-result-object v0

    .line 826
    .local v0, "colList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 827
    .local v2, "ret":Z
    const/4 v3, 0x0

    .line 830
    .local v3, "ti":Landroid/database/Cursor;
    :try_start_0
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "PRAGMA table_info(favorites)"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 831
    if-eqz v3, :cond_3

    .line 832
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 833
    const-string v4, "FavoritesProvider"

    const-string v5, "checkTable : Column list size isn\'t matching with reference."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    const/4 v2, 0x0

    .line 854
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 855
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 859
    :cond_1
    :goto_1
    return v2

    .line 836
    :cond_2
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 837
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 838
    const-string v4, "FavoritesProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkTable : The field name ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] does not exist."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const/4 v2, 0x0

    .line 841
    goto :goto_0

    .line 846
    :cond_3
    const/4 v2, 0x0

    .line 847
    const-string v4, "FavoritesProvider"

    const-string v5, "checkTable : query cursor is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 850
    :catch_0
    move-exception v1

    .line 851
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 852
    :try_start_2
    const-string v4, "FavoritesProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkTable : "

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

    .line 854
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 855
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 854
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 855
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v4
.end method

.method public clearFlagEmptyDbSwitched()V
    .locals 3

    .prologue
    .line 2465
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    .line 2466
    .local v0, "spKey":Ljava/lang/String;
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2467
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "EMPTY_DATABASE_SWITCHED"

    .line 2468
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2469
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2470
    return-void
.end method

.method public convertShortcutsToLauncherActivities()V
    .locals 22

    .prologue
    .line 1504
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1505
    const/4 v10, 0x0

    .line 1506
    .local v10, "c":Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 1510
    .local v19, "updateStmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v2

    .line 1511
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v20

    .line 1512
    .local v20, "userSerial":J
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "favorites"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "intent"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "itemType=1 AND profileId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1518
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "UPDATE favorites SET itemType=0 WHERE _id=?"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v19

    .line 1521
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 1522
    .local v13, "idIndex":I
    const-string v2, "intent"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 1524
    .local v18, "intentIndex":I
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1525
    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v17

    .line 1528
    .local v17, "intentDescription":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v16

    .line 1534
    .local v16, "intent":Landroid/content/Intent;
    :try_start_2
    invoke-static/range {v16 .. v16}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1538
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1539
    .local v14, "id":J
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1540
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1543
    .end local v13    # "idIndex":I
    .end local v14    # "id":J
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v17    # "intentDescription":Ljava/lang/String;
    .end local v18    # "intentIndex":I
    .end local v20    # "userSerial":J
    :catch_0
    move-exception v12

    .line 1544
    .local v12, "ex":Landroid/database/SQLException;
    :try_start_3
    const-string v2, "FavoritesProvider"

    const-string v3, "Error deduping shortcuts"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1546
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1547
    if-eqz v10, :cond_1

    .line 1548
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1550
    :cond_1
    if-eqz v19, :cond_2

    .line 1551
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1554
    .end local v12    # "ex":Landroid/database/SQLException;
    :cond_2
    :goto_1
    return-void

    .line 1529
    .restart local v13    # "idIndex":I
    .restart local v17    # "intentDescription":Ljava/lang/String;
    .restart local v18    # "intentIndex":I
    .restart local v20    # "userSerial":J
    :catch_1
    move-exception v11

    .line 1530
    .local v11, "e":Ljava/net/URISyntaxException;
    :try_start_4
    const-string v2, "FavoritesProvider"

    const-string v3, "Unable to parse intent"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1546
    .end local v11    # "e":Ljava/net/URISyntaxException;
    .end local v13    # "idIndex":I
    .end local v17    # "intentDescription":Ljava/lang/String;
    .end local v18    # "intentIndex":I
    .end local v20    # "userSerial":J
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1547
    if-eqz v10, :cond_3

    .line 1548
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1550
    :cond_3
    if-eqz v19, :cond_4

    .line 1551
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_4
    throw v2

    .line 1542
    .restart local v13    # "idIndex":I
    .restart local v18    # "intentIndex":I
    .restart local v20    # "userSerial":J
    :cond_5
    :try_start_5
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1546
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1547
    if-eqz v10, :cond_6

    .line 1548
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1550
    :cond_6
    if-eqz v19, :cond_2

    .line 1551
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_1
.end method

.method public copyFavoritesForHomeOnly()V
    .locals 14

    .prologue
    .line 1565
    const-string v0, "FavoritesProvider"

    const-string v1, "copyFavorites : homeApps layout -> homeOnly layout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1568
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1571
    .local v12, "folderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    const-string v3, "itemType=? AND (container=? OR container=?)"

    .line 1573
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const/16 v1, -0x64

    .line 1574
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const/16 v1, -0x65

    .line 1575
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1577
    .local v4, "selectionArg":[Ljava/lang/String;
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "favorites"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    .line 1579
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 1581
    :goto_0
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1582
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1585
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1617
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArg":[Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 1618
    .local v11, "ex":Landroid/database/SQLException;
    :try_start_3
    const-string v0, "FavoritesProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in copy favorites for homeonly : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1620
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1622
    .end local v11    # "ex":Landroid/database/SQLException;
    :goto_1
    return-void

    .line 1585
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectionArg":[Ljava/lang/String;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1589
    :cond_1
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "workspaceScreens_homeOnly"

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1590
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO workspaceScreens_homeOnly SELECT * FROM workspaceScreens"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1592
    const-string v9, "INSERT INTO favorites_homeOnly SELECT * FROM favorites WHERE container=-100 OR container=-101"

    .line 1597
    .local v9, "copySQL":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR container in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v12}, Lcom/android/launcher3/common/model/FavoritesProvider;->makeFoldersIdToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1600
    :cond_2
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1603
    const-string v8, "com.sec.launcher.action.SHOW_APPS_VIEW"

    .line 1604
    .local v8, "appsAction":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intent like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1605
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "favorites_homeOnly"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1607
    invoke-direct {p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->bindAppWidgetForHomeOnly()V

    .line 1609
    invoke-direct {p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->removeAppShortcutForHomeOnly()V

    .line 1611
    invoke-direct {p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->removeDuplicateItemForHomeOnly()Ljava/util/ArrayList;

    move-result-object v13

    .line 1613
    .local v13, "homeItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    invoke-direct {p0, v13}, Lcom/android/launcher3/common/model/FavoritesProvider;->copyAppsItemsToHome(Ljava/util/ArrayList;)V

    .line 1615
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1616
    invoke-direct {p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->copyPreferenceForHomeOnly()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1620
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArg":[Ljava/lang/String;
    .end local v8    # "appsAction":Ljava/lang/String;
    .end local v9    # "copySQL":Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v13    # "homeItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    :catchall_1
    move-exception v0

    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public createTable(J)V
    .locals 1
    .param p1, "userSerial"    # J

    .prologue
    .line 701
    const-string v0, "favorites"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->createFavoritesTable(JLjava/lang/String;)V

    .line 702
    const-string v0, "workspaceScreens"

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->createScreensTable(Ljava/lang/String;)V

    .line 704
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    const-string v0, "favorites_homeOnly"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->createFavoritesTable(JLjava/lang/String;)V

    .line 706
    const-string v0, "workspaceScreens_homeOnly"

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->createScreensTable(Ljava/lang/String;)V

    .line 709
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    const-string v0, "favorites_easy"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->createFavoritesTable(JLjava/lang/String;)V

    .line 711
    const-string v0, "workspaceScreens_easy"

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->createScreensTable(Ljava/lang/String;)V

    .line 713
    :cond_1
    return-void
.end method

.method public deleteEmptyFolders()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2229
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2231
    .local v10, "folderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2234
    :try_start_0
    const-string v3, "itemType = 2 AND _id NOT IN (SELECT container FROM favorites)"

    .line 2239
    .local v3, "selection":Ljava/lang/String;
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "favorites"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2242
    .local v8, "c":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2243
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2251
    .end local v3    # "selection":Ljava/lang/String;
    .end local v8    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 2252
    .local v9, "ex":Landroid/database/SQLException;
    :try_start_1
    const-string v0, "FavoritesProvider"

    invoke-virtual {v9}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2253
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2255
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2257
    .end local v9    # "ex":Landroid/database/SQLException;
    :goto_1
    return-object v10

    .line 2245
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v8    # "c":Landroid/database/Cursor;
    :cond_0
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2246
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2247
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "favorites"

    const-string v2, "_id"

    invoke-static {v2, v10}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2250
    :cond_1
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2255
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v3    # "selection":Ljava/lang/String;
    .end local v8    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public deleteTable()V
    .locals 4

    .prologue
    .line 760
    :try_start_0
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 761
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 762
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS favorites_homeOnly"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 763
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS favorites_homeApps"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 764
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS favorites_easy"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 765
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS favorites_standard"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 766
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS workspaceScreens"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 767
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS workspaceScreens_homeOnly"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 768
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS workspaceScreens_homeApps"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 769
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS workspaceScreens_easy"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 770
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS workspaceScreens_standard"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 773
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS appOrder"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 774
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 780
    :goto_0
    return-void

    .line 775
    :catch_0
    move-exception v0

    .line 776
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "FavoritesProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteTable converting error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 778
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public deleteTable(Ljava/lang/String;)V
    .locals 4
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 783
    const-string v0, "FavoritesProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteTable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/model/FavoritesProvider;->tableExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 787
    :cond_0
    return-void
.end method

.method public deleteWidgetHost(Lcom/android/launcher3/LauncherProviderChangeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/launcher3/LauncherProviderChangeListener;

    .prologue
    .line 1070
    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v1, :cond_1

    .line 1072
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHost;->deleteHost()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1085
    :cond_0
    new-instance v1, Lcom/android/launcher3/util/MainThreadExecutor;

    invoke-direct {v1}, Lcom/android/launcher3/util/MainThreadExecutor;-><init>()V

    new-instance v2, Lcom/android/launcher3/common/model/FavoritesProvider$1;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/common/model/FavoritesProvider$1;-><init>(Lcom/android/launcher3/common/model/FavoritesProvider;Lcom/android/launcher3/LauncherProviderChangeListener;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1095
    :cond_1
    return-void

    .line 1073
    :catch_0
    move-exception v0

    .line 1074
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1075
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1076
    throw v0
.end method

.method public deleteWidgetIds(Ljava/lang/String;)V
    .locals 13
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1098
    const-string v11, "itemType=?"

    .line 1099
    .local v11, "whereClause":Ljava/lang/String;
    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 1101
    .local v4, "selectionArg":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 1103
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "appWidgetId"

    aput-object v3, v2, v1

    const-string v3, "itemType=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1105
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1106
    const-string v0, "appWidgetId"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1111
    .local v10, "idxAppWidgetID":I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1112
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1113
    .local v12, "widgetId":I
    const-string v0, "FavoritesProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete WidgetId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0, v12}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1117
    .end local v10    # "idxAppWidgetID":I
    .end local v12    # "widgetId":I
    :catch_0
    move-exception v9

    .line 1118
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "FavoritesProvider"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1120
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1121
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1124
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void

    .line 1120
    :cond_1
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1121
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1120
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1121
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public generateNewScreenId()J
    .locals 4

    .prologue
    .line 1132
    iget-wide v0, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxScreenId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1133
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: max screen id was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1135
    :cond_0
    iget-wide v0, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxScreenId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxScreenId:J

    .line 1136
    iget-wide v0, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxScreenId:J

    return-wide v0
.end method

.method public getAppWidgetHost()Landroid/appwidget/AppWidgetHost;
    .locals 1

    .prologue
    .line 2732
    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object v0
.end method

.method public getItemCount(Ljava/lang/String;)I
    .locals 11
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 1226
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "COUNT(*)"

    aput-object v0, v2, v10

    .line 1227
    .local v2, "columns":[Ljava/lang/String;
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1229
    .local v8, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 1230
    .local v9, "count":I
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1231
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1234
    :cond_0
    if-eqz v8, :cond_1

    .line 1235
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1237
    :cond_1
    return v9
.end method

.method public getMaxScreenId()J
    .locals 2

    .prologue
    .line 692
    iget-wide v0, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxScreenId:J

    return-wide v0
.end method

.method public initializeExternalAdd(Landroid/content/ContentValues;)Z
    .locals 12
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v8, 0x0

    .line 1141
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportSprintExtension()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1142
    const-string v9, "FavoritesProvider"

    const-string v10, " [SPRINT] - skip generating new ID for new rows as it\'s already created"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :goto_0
    const-string v9, "itemType"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 1151
    .local v6, "itemType":Ljava/lang/Integer;
    if-eqz v6, :cond_2

    .line 1152
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    const-string v9, "appWidgetId"

    .line 1153
    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1155
    sget-object v9, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 1156
    .local v1, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    const-string v9, "appWidgetProvider"

    .line 1157
    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1156
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1159
    .local v2, "cn":Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    .line 1161
    :try_start_0
    iget-object v9, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v9}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 1162
    .local v0, "appWidgetId":I
    const-string v9, "appWidgetId"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1163
    invoke-virtual {v1, v0, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_2

    .line 1183
    .end local v0    # "appWidgetId":I
    .end local v1    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .end local v2    # "cn":Landroid/content/ComponentName;
    :cond_0
    :goto_1
    return v8

    .line 1144
    .end local v6    # "itemType":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v4

    .line 1145
    .local v4, "id":J
    const-string v9, "_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 1166
    .end local v4    # "id":J
    .restart local v1    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .restart local v2    # "cn":Landroid/content/ComponentName;
    .restart local v6    # "itemType":Ljava/lang/Integer;
    :catch_0
    move-exception v3

    .line 1167
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string v9, "FavoritesProvider"

    const-string v10, "Failed to initialize external widget"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1175
    .end local v1    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_2
    const-string v9, "container"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_3

    const-string v9, "container"

    .line 1176
    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, -0x64

    if-ne v9, v10, :cond_3

    .line 1178
    const-string v9, "screen"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 1179
    .local v7, "screenId":Ljava/lang/Long;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, Lcom/android/launcher3/common/model/FavoritesProvider;->addScreenIdIfNecessary(J)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1183
    .end local v7    # "screenId":Ljava/lang/Long;
    :cond_3
    const/4 v8, 0x1

    goto :goto_1
.end method

.method public insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v1, 0x0

    .line 2279
    if-eqz p2, :cond_0

    .line 2280
    invoke-static {p1, p2, v1, p3}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2282
    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "favorites"

    invoke-static {p1, v0, v1, p3}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public loadAppsFavorites(Lcom/android/launcher3/common/model/DefaultLayoutParser;)I
    .locals 4
    .param p1, "parser"    # Lcom/android/launcher3/common/model/DefaultLayoutParser;

    .prologue
    .line 2181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2183
    .local v1, "screenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, v2, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->loadLayout(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)I

    move-result v0

    .line 2186
    .local v0, "count":I
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2189
    const-string v2, "favorites"

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->initializeMaxItemId(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxItemId:J

    .line 2191
    return v0
.end method

.method public loadAppsScreensFromDb()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v14, 0x0

    const/4 v4, 0x0

    .line 2310
    const-string v0, "favorites"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->getMaxId(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    .line 2311
    const-string v0, "FavoritesProvider"

    const-string v1, "app order colums are not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    :goto_0
    return-object v4

    .line 2315
    :cond_0
    const-string v3, "container = -102"

    .line 2316
    .local v3, "selection":Ljava/lang/String;
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "favorites"

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "max(screen)"

    aput-object v5, v2, v14

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2319
    .local v12, "sc":Landroid/database/Cursor;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2320
    .local v13, "screenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v9, 0x0

    .line 2323
    .local v9, "max":I
    :goto_1
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 2325
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    goto :goto_1

    .line 2326
    :catch_0
    move-exception v8

    .line 2327
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "FavoritesProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Desktop items loading interrupted - invalid screens: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2332
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2335
    const-wide/16 v10, 0x0

    .local v10, "i":J
    :goto_2
    int-to-long v0, v9

    cmp-long v0, v10, v0

    if-gtz v0, :cond_2

    .line 2336
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2335
    const-wide/16 v0, 0x1

    add-long/2addr v10, v0

    goto :goto_2

    :cond_2
    move-object v4, v13

    .line 2337
    goto :goto_0
.end method

.method public loadFavorites(Lcom/android/launcher3/common/model/DefaultLayoutParser;)I
    .locals 20
    .param p1, "parser"    # Lcom/android/launcher3/common/model/DefaultLayoutParser;

    .prologue
    .line 2137
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2139
    .local v12, "screenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v14, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->loadLayout(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)I

    move-result v2

    .line 2142
    .local v2, "count":I
    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2143
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2144
    .local v4, "defaultScreenCount":I
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Launcher_TotalPageCount"

    .line 2145
    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2146
    .local v3, "cscScreenCount":I
    const-string v14, "FavoritesProvider"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "defaultScreenCount : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " cscScreenCount : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    if-ge v4, v3, :cond_0

    .line 2148
    sub-int v11, v3, v4

    .line 2149
    .local v11, "screenDiff":I
    add-int/lit8 v14, v4, -0x1

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 2150
    .local v8, "maxScreenId":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v11, :cond_0

    .line 2151
    const-wide/16 v14, 0x1

    add-long/2addr v8, v14

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2150
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2154
    .end local v5    # "i":I
    .end local v8    # "maxScreenId":J
    .end local v11    # "screenDiff":I
    :cond_0
    const/4 v10, 0x0

    .line 2155
    .local v10, "rank":I
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 2156
    .local v13, "values":Landroid/content/ContentValues;
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 2157
    .local v6, "id":Ljava/lang/Long;
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 2158
    const-string v15, "_id"

    invoke-virtual {v13, v15, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2159
    const-string v15, "screenRank"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2160
    sget-object v15, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v16, "workspaceScreens"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v15, v0, v1, v13}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-gez v15, :cond_1

    .line 2161
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Failed initialize screen tablefrom default layout"

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2164
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 2165
    goto :goto_1

    .line 2169
    .end local v6    # "id":Ljava/lang/Long;
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProviderID()Lcom/android/launcher3/LauncherProviderID;

    move-result-object v7

    .line 2170
    .local v7, "providerID":Lcom/android/launcher3/LauncherProviderID;
    if-eqz v7, :cond_3

    .line 2171
    const-string v14, "FavoritesProvider"

    const-string v15, "[SPRINT] Will init pref table based on default values"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    sget-object v14, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-virtual {v7, v14}, Lcom/android/launcher3/LauncherProviderID;->initPreferences(Landroid/content/Context;)V

    .line 2175
    :cond_3
    const-string v14, "favorites"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher3/common/model/FavoritesProvider;->initializeMaxItemId(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxItemId:J

    .line 2176
    const-string v14, "workspaceScreens"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher3/common/model/FavoritesProvider;->initializeMaxItemId(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxScreenId:J

    .line 2177
    return v2
.end method

.method public loadHotseatCount()I
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 2435
    const/4 v9, -0x1

    .line 2438
    .local v9, "count":I
    const-string v3, "container=?"

    .line 2439
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, -0x65

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 2440
    .local v4, "selectionArgs":[Ljava/lang/String;
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "favorites"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2442
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 2443
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 2444
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2446
    :cond_0
    return v9
.end method

.method public loadScreensFromDb()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2289
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "workspaceScreens"

    const-string v7, "screenRank"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2291
    .local v10, "sc":Landroid/database/Cursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2293
    .local v11, "screenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 2294
    .local v9, "idIndex":I
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 2296
    :try_start_1
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2297
    :catch_0
    move-exception v8

    .line 2298
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "FavoritesProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Desktop items loading interrupted - invalid screens: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2303
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "idIndex":I
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v9    # "idIndex":I
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2305
    return-object v11
.end method

.method public loadWorkspaceWithScreenRank(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "favoriteTable"    # Ljava/lang/String;
    .param p2, "screenTable"    # Ljava/lang/String;

    .prologue
    .line 2451
    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2452
    .local v1, "escapedFavoriteTable":Ljava/lang/String;
    invoke-static {p2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2454
    .local v2, "escapedScreenTable":Ljava/lang/String;
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT f.*, screenRank from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " f join "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " w on f.screen = w._id where container = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, -0x64

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    .line 2457
    invoke-static {v5}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getUserSelectionArg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " order by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "screenRank"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "cellY"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "cellX"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 2454
    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2461
    .local v0, "c":Landroid/database/Cursor;
    return-object v0
.end method

.method public migrateTable(JII)Z
    .locals 15
    .param p1, "userSerial"    # J
    .param p3, "oldVersion"    # I
    .param p4, "newVersion"    # I

    .prologue
    .line 508
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 509
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "DB file is null state for migration."

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 512
    :cond_0
    const/16 v2, 0x1e

    move/from16 v0, p3

    if-lt v0, v2, :cond_1

    .line 513
    invoke-direct/range {p0 .. p4}, Lcom/android/launcher3/common/model/FavoritesProvider;->upgradeTable(JII)Z

    move-result v13

    .line 568
    :goto_0
    return v13

    .line 516
    :cond_1
    const/4 v13, 0x0

    .line 518
    .local v13, "ret":Z
    :try_start_0
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 520
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    .line 521
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 520
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 522
    .local v11, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 524
    .local v12, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    new-instance v10, Ljava/io/File;

    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    const-string v4, "pagesettings.db"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    const-string v4, "pagesettings.db"

    invoke-direct {v10, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v3

    .line 527
    .local v3, "isDaliMigration":Z
    if-eqz v3, :cond_2

    .line 528
    invoke-direct {p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->prevMigrationForDali()V

    .line 529
    const-string v4, "favorites"

    const-string v5, "workspaceScreens"

    const/4 v8, 0x1

    move-object v2, p0

    move-wide/from16 v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/common/model/FavoritesProvider;->migrationTable(ZLjava/lang/String;Ljava/lang/String;JZ)V

    .line 530
    const-string v2, "favorites_homeOnly"

    move-wide/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->createFavoritesTable(JLjava/lang/String;)V

    .line 531
    const-string v2, "workspaceScreens_homeOnly"

    invoke-direct {p0, v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->createScreensTable(Ljava/lang/String;)V

    .line 544
    :goto_1
    const-string v2, "com.sec.android.app.launcher.home.defaultpage.prefs"

    const-string v4, "homescreenindex"

    const/4 v5, 0x1

    .line 545
    invoke-interface {v11, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 544
    invoke-interface {v12, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 547
    const-string v2, "favorites_easy"

    const-string v4, "workspaceScreens_easy"

    move-wide/from16 v0, p1

    invoke-direct {p0, v2, v4, v0, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->migrationTableForEasyMode(Ljava/lang/String;Ljava/lang/String;J)V

    .line 549
    invoke-direct {p0, v11, v12}, Lcom/android/launcher3/common/model/FavoritesProvider;->migrateSharedPrefsForApps(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 550
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "DROP TABLE IF EXISTS appOrder"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 553
    const-string v2, "MoveApps_Help_Shown"

    invoke-interface {v12, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 554
    const-string v2, "screencount"

    invoke-interface {v12, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 555
    const-string v2, "homescreenindex"

    invoke-interface {v12, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 556
    const-string v2, "need_dark_font"

    invoke-interface {v12, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 557
    const-string v2, "emptypages"

    invoke-interface {v12, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 558
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 560
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    const/4 v13, 0x1

    .line 565
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 533
    :cond_2
    :try_start_1
    const-string v2, "home_only_mode"

    invoke-interface {v11, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "home_only_mode"

    const/4 v4, 0x0

    .line 534
    invoke-interface {v11, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 535
    const-string v4, "favorites"

    const-string v5, "workspaceScreens"

    const/4 v8, 0x0

    move-object v2, p0

    move-wide/from16 v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/common/model/FavoritesProvider;->migrationTable(ZLjava/lang/String;Ljava/lang/String;JZ)V

    .line 536
    const-string v4, "favorites_homeApps"

    const-string v5, "workspaceScreens_homeApps"

    const/4 v8, 0x1

    move-object v2, p0

    move-wide/from16 v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/common/model/FavoritesProvider;->migrationTable(ZLjava/lang/String;Ljava/lang/String;JZ)V

    .line 541
    :goto_2
    const-string v2, "com.sec.android.app.launcher.homeonly.defaultpage.prefs"

    const-string v4, "homescreenindex.homeonly"

    const/4 v5, 0x1

    .line 542
    invoke-interface {v11, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 541
    invoke-interface {v12, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 562
    .end local v3    # "isDaliMigration":Z
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "prefs":Landroid/content/SharedPreferences;
    .end local v12    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v9

    .line 563
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "FavoritesProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "migrateTable converting error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 565
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 538
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v3    # "isDaliMigration":Z
    .restart local v10    # "file":Ljava/io/File;
    .restart local v11    # "prefs":Landroid/content/SharedPreferences;
    .restart local v12    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    :try_start_3
    const-string v4, "favorites"

    const-string v5, "workspaceScreens"

    const/4 v8, 0x1

    move-object v2, p0

    move-wide/from16 v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/common/model/FavoritesProvider;->migrationTable(ZLjava/lang/String;Ljava/lang/String;JZ)V

    .line 539
    const-string v4, "favorites_homeOnly"

    const-string v5, "workspaceScreens_homeOnly"

    const/4 v8, 0x0

    move-object v2, p0

    move-wide/from16 v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/common/model/FavoritesProvider;->migrationTable(ZLjava/lang/String;Ljava/lang/String;JZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 565
    .end local v3    # "isDaliMigration":Z
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "prefs":Landroid/content/SharedPreferences;
    .end local v12    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v2

    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public removeChangedComponentPref()V
    .locals 6

    .prologue
    .line 863
    const-string v1, "checkChangedComponentVersion"

    .line 864
    .local v1, "prefsKey":Ljava/lang/String;
    const-string v2, "checkChangedComponentVersion_HomeOnly"

    .line 867
    .local v2, "prefsKeyHomeOnly":Ljava/lang/String;
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    .line 868
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 867
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 868
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 869
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 870
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 871
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 872
    return-void
.end method

.method public restoreAppsFavorites(Lcom/android/launcher3/common/model/DefaultLayoutParser;)I
    .locals 4
    .param p1, "loader"    # Lcom/android/launcher3/common/model/DefaultLayoutParser;

    .prologue
    .line 2216
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->loadLayout(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)I

    move-result v0

    .line 2218
    .local v0, "count":I
    const-string v1, "favorites"

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->initializeMaxItemId(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxItemId:J

    .line 2219
    return v0
.end method

.method public restoreFavorites(Lcom/android/launcher3/common/model/DefaultLayoutParser;)I
    .locals 4
    .param p1, "loader"    # Lcom/android/launcher3/common/model/DefaultLayoutParser;

    .prologue
    .line 2195
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->loadLayout(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)I

    move-result v0

    .line 2197
    .local v0, "count":I
    const-string v1, "favorites"

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->initializeMaxItemId(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxItemId:J

    .line 2198
    const-string v1, "workspaceScreens"

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->initializeMaxItemId(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxScreenId:J

    .line 2200
    return v0
.end method

.method public restoreScreens(ILjava/lang/String;)V
    .locals 6
    .param p1, "pageCount"    # I
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 2204
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2205
    .local v1, "values":Landroid/content/ContentValues;
    const/4 v0, 0x0

    .local v0, "rank":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 2206
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 2207
    const-string v2, "_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2208
    const-string v2, "screenRank"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2209
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-static {v2, p2, v3, v1}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 2210
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed restore screens"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2205
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2213
    :cond_1
    return-void
.end method

.method public setMaxScreenId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 696
    iput-wide p1, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxScreenId:J

    .line 697
    return-void
.end method

.method public declared-synchronized switchTable(IZ)Z
    .locals 26
    .param p1, "mode"    # I
    .param p2, "settingValue"    # Z

    .prologue
    .line 2344
    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    .line 2379
    :try_start_0
    const-string v19, "FavoritesProvider"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "switchTable mode error : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2380
    const/16 v19, 0x0

    .line 2431
    :goto_0
    monitor-exit p0

    return v19

    .line 2346
    :pswitch_0
    :try_start_1
    const-string v9, "favorites"

    .line 2347
    .local v9, "oriFavoritesTbl":Ljava/lang/String;
    const-string v10, "workspaceScreens"

    .line 2348
    .local v10, "oriWorkspaceScreensTbl":Ljava/lang/String;
    if-eqz p2, :cond_3

    const-string v7, "favorites_homeOnly"

    .line 2349
    .local v7, "oldFavoritesTbl":Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_4

    const-string v5, "favorites_homeApps"

    .line 2350
    .local v5, "newFavoritesTbl":Ljava/lang/String;
    :goto_2
    if-eqz p2, :cond_5

    const-string v8, "workspaceScreens_homeOnly"

    .line 2352
    .local v8, "oldWorkspaceScreensTbl":Ljava/lang/String;
    :goto_3
    if-eqz p2, :cond_6

    const-string v6, "workspaceScreens_homeApps"

    .line 2384
    .local v6, "newWorkspaceScreensTbl":Ljava/lang/String;
    :goto_4
    sget-object v19, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2386
    :try_start_2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2387
    .local v4, "hideItems":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/common/model/FavoritesProvider;->getHideItems(Ljava/util/HashSet;)V

    .line 2389
    sget-object v19, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    .line 2390
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    .line 2389
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 2391
    .local v11, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    const-string v22, "com.sec.android.app.launcher.hideapps.prefs"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2393
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher3/common/model/FavoritesProvider;->tableExists(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 2394
    sget-object v19, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-static/range {v19 .. v19}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v18

    .line 2395
    .local v18, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v20

    .line 2396
    .local v20, "userSerialNumber":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2, v7}, Lcom/android/launcher3/common/model/FavoritesProvider;->createFavoritesTable(JLjava/lang/String;)V

    .line 2398
    .end local v18    # "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    .end local v20    # "userSerialNumber":J
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher3/common/model/FavoritesProvider;->tableExists(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 2399
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/launcher3/common/model/FavoritesProvider;->createScreensTable(Ljava/lang/String;)V

    .line 2402
    :cond_1
    sget-object v19, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ALTER table "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v9}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " rename to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 2403
    invoke-static {v5}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2402
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2404
    sget-object v19, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ALTER table "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v7}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " rename to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 2405
    invoke-static {v9}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2404
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2406
    sget-object v19, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ALTER table "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v10}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " rename to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 2407
    invoke-static {v6}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2406
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2408
    sget-object v19, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ALTER table "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v8}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " rename to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 2409
    invoke-static {v10}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2408
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2411
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxItemId:J

    .line 2412
    .local v12, "prevItemId":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxScreenId:J

    .line 2413
    .local v14, "prevScreenId":J
    const-string v19, "favorites"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->initializeMaxItemId(Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->setMaxItemId(J)V

    .line 2414
    const-string v19, "workspaceScreens"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->initializeMaxItemId(Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->setMaxScreenId(J)V

    .line 2415
    sget-object v19, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 2416
    const-string v19, "FavoritesProvider"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "switchTable mode : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " value : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    const-string v19, "FavoritesProvider"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "switchTable. old/new Max Item Id: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " / "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxItemId:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    const-string v19, "FavoritesProvider"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "switchTable. old/new Max Screen Id: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " / "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxScreenId:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2420
    :try_start_3
    sget-object v19, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2423
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxItemId:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v19, v22, v24

    if-nez v19, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxScreenId:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v19, v22, v24

    if-nez v19, :cond_2

    const-wide/16 v22, 0x0

    cmp-long v19, v12, v22

    if-eqz v19, :cond_2

    .line 2424
    const-string v19, "FavoritesProvider"

    const-string v22, "switchTable. Current page is required load default layout"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v17

    .line 2426
    .local v17, "spKey":Ljava/lang/String;
    sget-object v19, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 2427
    .local v16, "sp":Landroid/content/SharedPreferences;
    const-string v19, "EMPTY_DATABASE_SWITCHED"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 2428
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    const-string v22, "EMPTY_DATABASE_SWITCHED"

    const/16 v23, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2431
    .end local v16    # "sp":Landroid/content/SharedPreferences;
    .end local v17    # "spKey":Ljava/lang/String;
    :cond_2
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 2348
    .end local v4    # "hideItems":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "newFavoritesTbl":Ljava/lang/String;
    .end local v6    # "newWorkspaceScreensTbl":Ljava/lang/String;
    .end local v7    # "oldFavoritesTbl":Ljava/lang/String;
    .end local v8    # "oldWorkspaceScreensTbl":Ljava/lang/String;
    .end local v11    # "prefs":Landroid/content/SharedPreferences;
    .end local v12    # "prevItemId":J
    .end local v14    # "prevScreenId":J
    :cond_3
    const-string v7, "favorites_homeApps"

    goto/16 :goto_1

    .line 2349
    .restart local v7    # "oldFavoritesTbl":Ljava/lang/String;
    :cond_4
    const-string v5, "favorites_homeOnly"

    goto/16 :goto_2

    .line 2350
    .restart local v5    # "newFavoritesTbl":Ljava/lang/String;
    :cond_5
    const-string v8, "workspaceScreens_homeApps"

    goto/16 :goto_3

    .line 2352
    .restart local v8    # "oldWorkspaceScreensTbl":Ljava/lang/String;
    :cond_6
    const-string v6, "workspaceScreens_homeOnly"

    goto/16 :goto_4

    .line 2357
    .end local v5    # "newFavoritesTbl":Ljava/lang/String;
    .end local v7    # "oldFavoritesTbl":Ljava/lang/String;
    .end local v8    # "oldWorkspaceScreensTbl":Ljava/lang/String;
    .end local v9    # "oriFavoritesTbl":Ljava/lang/String;
    .end local v10    # "oriWorkspaceScreensTbl":Ljava/lang/String;
    :pswitch_1
    const-string v9, "favorites"

    .line 2358
    .restart local v9    # "oriFavoritesTbl":Ljava/lang/String;
    const-string v10, "workspaceScreens"

    .line 2359
    .restart local v10    # "oriWorkspaceScreensTbl":Ljava/lang/String;
    if-eqz p2, :cond_7

    const-string v7, "favorites_easy"

    .line 2360
    .restart local v7    # "oldFavoritesTbl":Ljava/lang/String;
    :goto_5
    if-eqz p2, :cond_8

    const-string v5, "favorites_standard"

    .line 2361
    .restart local v5    # "newFavoritesTbl":Ljava/lang/String;
    :goto_6
    if-eqz p2, :cond_9

    const-string v8, "workspaceScreens_easy"

    .line 2363
    .restart local v8    # "oldWorkspaceScreensTbl":Ljava/lang/String;
    :goto_7
    if-eqz p2, :cond_a

    const-string v6, "workspaceScreens_standard"

    .line 2365
    .restart local v6    # "newWorkspaceScreensTbl":Ljava/lang/String;
    :goto_8
    goto/16 :goto_4

    .line 2359
    .end local v5    # "newFavoritesTbl":Ljava/lang/String;
    .end local v6    # "newWorkspaceScreensTbl":Ljava/lang/String;
    .end local v7    # "oldFavoritesTbl":Ljava/lang/String;
    .end local v8    # "oldWorkspaceScreensTbl":Ljava/lang/String;
    :cond_7
    const-string v7, "favorites_standard"

    goto :goto_5

    .line 2360
    .restart local v7    # "oldFavoritesTbl":Ljava/lang/String;
    :cond_8
    const-string v5, "favorites_easy"

    goto :goto_6

    .line 2361
    .restart local v5    # "newFavoritesTbl":Ljava/lang/String;
    :cond_9
    const-string v8, "workspaceScreens_standard"

    goto :goto_7

    .line 2363
    .restart local v8    # "oldWorkspaceScreensTbl":Ljava/lang/String;
    :cond_a
    const-string v6, "workspaceScreens_easy"

    goto :goto_8

    .line 2368
    .end local v5    # "newFavoritesTbl":Ljava/lang/String;
    .end local v7    # "oldFavoritesTbl":Ljava/lang/String;
    .end local v8    # "oldWorkspaceScreensTbl":Ljava/lang/String;
    .end local v9    # "oriFavoritesTbl":Ljava/lang/String;
    .end local v10    # "oriWorkspaceScreensTbl":Ljava/lang/String;
    :pswitch_2
    const-string v9, "favorites_standard"

    .line 2369
    .restart local v9    # "oriFavoritesTbl":Ljava/lang/String;
    const-string v10, "workspaceScreens_standard"

    .line 2370
    .restart local v10    # "oriWorkspaceScreensTbl":Ljava/lang/String;
    if-eqz p2, :cond_b

    const-string v7, "favorites_homeOnly"

    .line 2371
    .restart local v7    # "oldFavoritesTbl":Ljava/lang/String;
    :goto_9
    if-eqz p2, :cond_c

    const-string v5, "favorites_homeApps"

    .line 2372
    .restart local v5    # "newFavoritesTbl":Ljava/lang/String;
    :goto_a
    if-eqz p2, :cond_d

    const-string v8, "workspaceScreens_homeOnly"

    .line 2374
    .restart local v8    # "oldWorkspaceScreensTbl":Ljava/lang/String;
    :goto_b
    if-eqz p2, :cond_e

    const-string v6, "workspaceScreens_homeApps"

    .line 2376
    .restart local v6    # "newWorkspaceScreensTbl":Ljava/lang/String;
    :goto_c
    goto/16 :goto_4

    .line 2370
    .end local v5    # "newFavoritesTbl":Ljava/lang/String;
    .end local v6    # "newWorkspaceScreensTbl":Ljava/lang/String;
    .end local v7    # "oldFavoritesTbl":Ljava/lang/String;
    .end local v8    # "oldWorkspaceScreensTbl":Ljava/lang/String;
    :cond_b
    const-string v7, "favorites_homeApps"

    goto :goto_9

    .line 2371
    .restart local v7    # "oldFavoritesTbl":Ljava/lang/String;
    :cond_c
    const-string v5, "favorites_homeOnly"

    goto :goto_a

    .line 2372
    .restart local v5    # "newFavoritesTbl":Ljava/lang/String;
    :cond_d
    const-string v8, "workspaceScreens_homeApps"

    goto :goto_b

    .line 2374
    .restart local v8    # "oldWorkspaceScreensTbl":Ljava/lang/String;
    :cond_e
    const-string v6, "workspaceScreens_homeOnly"

    goto :goto_c

    .line 2420
    .restart local v6    # "newWorkspaceScreensTbl":Ljava/lang/String;
    :catchall_0
    move-exception v19

    sget-object v22, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2344
    .end local v5    # "newFavoritesTbl":Ljava/lang/String;
    .end local v6    # "newWorkspaceScreensTbl":Ljava/lang/String;
    .end local v7    # "oldFavoritesTbl":Ljava/lang/String;
    .end local v8    # "oldWorkspaceScreensTbl":Ljava/lang/String;
    .end local v9    # "oriFavoritesTbl":Ljava/lang/String;
    .end local v10    # "oriWorkspaceScreensTbl":Ljava/lang/String;
    :catchall_1
    move-exception v19

    monitor-exit p0

    throw v19

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public tableExists(Ljava/lang/String;)Z
    .locals 14
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v13, 0x0

    const/4 v6, 0x0

    .line 1026
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 1044
    :goto_0
    return v13

    .line 1030
    :cond_0
    const/4 v12, 0x0

    .line 1031
    .local v12, "exist":Z
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "sqlite_master"

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "tbl_name"

    aput-object v4, v3, v13

    const-string v4, "tbl_name = ?"

    new-array v5, v1, [Ljava/lang/String;

    aput-object p1, v5, v13

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    move-object v10, v6

    invoke-virtual/range {v0 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v11

    .line 1035
    .local v11, "c":Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 1037
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    move v12, v1

    .line 1039
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1043
    :cond_1
    const-string v0, "FavoritesProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tableExists tableName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v12

    .line 1044
    goto :goto_0

    :cond_2
    move v12, v13

    .line 1037
    goto :goto_1

    .line 1039
    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public updateAppItems(Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2473
    .local p1, "updates":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;>;"
    const/4 v8, 0x0

    .line 2474
    .local v8, "insertFolder":Landroid/database/sqlite/SQLiteStatement;
    const/4 v13, 0x0

    .line 2475
    .local v13, "updateFolder":Landroid/database/sqlite/SQLiteStatement;
    const/4 v15, 0x0

    .line 2476
    .local v15, "updateTitle":Landroid/database/sqlite/SQLiteStatement;
    const/4 v7, 0x0

    .line 2477
    .local v7, "insertApp":Landroid/database/sqlite/SQLiteStatement;
    const/4 v11, 0x0

    .line 2478
    .local v11, "updateApp":Landroid/database/sqlite/SQLiteStatement;
    const/4 v4, 0x0

    .line 2479
    .local v4, "deleteItem":Landroid/database/sqlite/SQLiteStatement;
    const/4 v12, 0x0

    .line 2480
    .local v12, "updateColor":Landroid/database/sqlite/SQLiteStatement;
    const/4 v14, 0x0

    .line 2482
    .local v14, "updateRestore":Landroid/database/sqlite/SQLiteStatement;
    sget-object v17, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v16

    .line 2485
    .local v16, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    :try_start_0
    sget-object v17, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2486
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1d

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;

    .line 2487
    .local v10, "update":Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;
    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->action:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    goto :goto_0

    .line 2490
    :pswitch_0
    const-string v18, "FavoritesProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "apps favorites insert folder: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->screen:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->rank:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    if-nez v8, :cond_0

    .line 2494
    sget-object v18, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v19, "INSERT into favorites (_id,screen,rank,title,color) values(?,?,?,?,?)"

    invoke-virtual/range {v18 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v8

    .line 2496
    :cond_0
    const/16 v18, 0x1

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2497
    const/16 v18, 0x2

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->screen:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2498
    const/16 v18, 0x3

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->rank:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2499
    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-nez v18, :cond_7

    .line 2500
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 2504
    :goto_1
    const/16 v18, 0x5

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->color:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2506
    const-string v18, "FavoritesProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "apps favorites insert folder: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->screen:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->rank:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 2675
    .end local v10    # "update":Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;
    :catch_0
    move-exception v5

    .line 2676
    .local v5, "e":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    :try_start_1
    const-string v17, "FavoritesProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SQLiteReadOnlyDatabaseException:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2678
    if-eqz v8, :cond_1

    .line 2679
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2681
    :cond_1
    if-eqz v13, :cond_2

    .line 2682
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2684
    :cond_2
    if-eqz v15, :cond_3

    .line 2685
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2687
    :cond_3
    if-eqz v7, :cond_4

    .line 2688
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2690
    :cond_4
    if-eqz v11, :cond_5

    .line 2691
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2693
    :cond_5
    if-eqz v4, :cond_6

    .line 2694
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2696
    :cond_6
    sget-object v17, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2699
    .end local v5    # "e":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    :goto_2
    return-void

    .line 2502
    .restart local v10    # "update":Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;
    :cond_7
    const/16 v18, 0x4

    :try_start_2
    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 2678
    .end local v10    # "update":Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;
    :catchall_0
    move-exception v17

    if-eqz v8, :cond_8

    .line 2679
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2681
    :cond_8
    if-eqz v13, :cond_9

    .line 2682
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2684
    :cond_9
    if-eqz v15, :cond_a

    .line 2685
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2687
    :cond_a
    if-eqz v7, :cond_b

    .line 2688
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2690
    :cond_b
    if-eqz v11, :cond_c

    .line 2691
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2693
    :cond_c
    if-eqz v4, :cond_d

    .line 2694
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2696
    :cond_d
    sget-object v18, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v17

    .line 2514
    .restart local v10    # "update":Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;
    :pswitch_1
    :try_start_3
    const-string v18, "FavoritesProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "apps favorites update folder: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->screen:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->rank:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    if-nez v13, :cond_e

    .line 2518
    sget-object v18, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v19, "UPDATE favorites set screen=?,rank=?,title=? where _id=?"

    invoke-virtual/range {v18 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v13

    .line 2520
    :cond_e
    const/16 v18, 0x1

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->screen:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v13, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2521
    const/16 v18, 0x2

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->rank:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v13, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2522
    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-nez v18, :cond_f

    .line 2523
    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 2528
    :goto_3
    const/16 v18, 0x4

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v13, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2530
    const-string v18, "FavoritesProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "apps favorites update folder: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->screen:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->rank:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    .line 2525
    :cond_f
    const/16 v18, 0x3

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_3

    .line 2538
    :pswitch_2
    const-string v18, "FavoritesProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "apps favorites update title: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    if-nez v15, :cond_10

    .line 2541
    sget-object v18, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v19, "UPDATE favorites set title=? where _id=?"

    .line 2542
    invoke-virtual/range {v18 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v15

    .line 2544
    :cond_10
    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-nez v18, :cond_11

    .line 2545
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 2549
    :goto_4
    const/16 v18, 0x2

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v15, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2550
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    .line 2547
    :cond_11
    const/16 v18, 0x1

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_4

    .line 2555
    :pswitch_3
    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->component:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    if-eqz v18, :cond_13

    .line 2556
    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->component:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    .line 2560
    .local v6, "flattenComponent":Ljava/lang/String;
    :goto_5
    const-string v18, "FavoritesProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "apps favorites create app: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->container:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->screen:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->rank:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-boolean v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->hidden:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->itemtype:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->modified:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->status:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    if-nez v7, :cond_12

    .line 2569
    sget-object v18, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v19, "INSERT into favorites (_id,container,screen,rank,hidden,title,intent,profileId,itemtype,modified,restored) values(?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual/range {v18 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    .line 2571
    :cond_12
    const/16 v18, 0x1

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2572
    const/16 v18, 0x2

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->container:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2573
    const/16 v18, 0x3

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->screen:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2574
    const/16 v18, 0x4

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->rank:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2575
    const/16 v20, 0x5

    iget-boolean v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->hidden:Z

    move/from16 v18, v0

    if-eqz v18, :cond_14

    const-wide/16 v18, 0x1

    :goto_6
    move/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2576
    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-nez v18, :cond_15

    .line 2577
    const/16 v18, 0x6

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 2582
    :goto_7
    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.intent.action.MAIN"

    const/16 v20, 0x0

    invoke-direct/range {v18 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v19, "android.intent.category.LAUNCHER"

    .line 2583
    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->component:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    .line 2584
    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v18

    const/high16 v19, 0x10200000

    .line 2585
    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v9

    .line 2587
    .local v9, "intent":Landroid/content/Intent;
    const/16 v18, 0x7

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2589
    const/16 v18, 0x8

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v20

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2590
    const/16 v18, 0x9

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->itemtype:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2591
    const/16 v18, 0xa

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->modified:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2592
    const/16 v18, 0xb

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->status:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2595
    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->component:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    if-eqz v18, :cond_16

    .line 2596
    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->component:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    .line 2600
    :goto_8
    const-string v18, "FavoritesProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "apps favorites create app: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->container:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->screen:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->rank:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-boolean v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->hidden:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->itemtype:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->modified:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    .line 2558
    .end local v6    # "flattenComponent":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_13
    const-string v6, "component is null"

    .restart local v6    # "flattenComponent":Ljava/lang/String;
    goto/16 :goto_5

    .line 2575
    :cond_14
    const-wide/16 v18, 0x0

    goto/16 :goto_6

    .line 2579
    :cond_15
    const/16 v18, 0x6

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 2598
    .restart local v9    # "intent":Landroid/content/Intent;
    :cond_16
    const-string v6, "component is null"

    goto/16 :goto_8

    .line 2610
    .end local v6    # "flattenComponent":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    :pswitch_4
    const-string v18, "FavoritesProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "apps favorites update app: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->container:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->screen:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->rank:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-boolean v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->hidden:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    if-nez v11, :cond_17

    .line 2615
    sget-object v18, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v19, "UPDATE favorites set container=?,screen=?,rank=?,hidden=?,title=?,profileId=? where _id=?"

    .line 2616
    invoke-virtual/range {v18 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v11

    .line 2618
    :cond_17
    const/16 v18, 0x1

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->container:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v11, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2619
    const/16 v18, 0x2

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->screen:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v11, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2620
    const/16 v18, 0x3

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->rank:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v11, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2621
    const/16 v20, 0x4

    iget-boolean v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->hidden:Z

    move/from16 v18, v0

    if-eqz v18, :cond_18

    const-wide/16 v18, 0x1

    :goto_9
    move/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v11, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2622
    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-nez v18, :cond_19

    .line 2623
    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 2627
    :goto_a
    const/16 v18, 0x6

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v20

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v11, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2628
    const/16 v18, 0x7

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v11, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2630
    const-string v18, "FavoritesProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "apps favorites update app: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->container:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->screen:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->rank:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-boolean v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->hidden:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    .line 2621
    :cond_18
    const-wide/16 v18, 0x0

    goto/16 :goto_9

    .line 2625
    :cond_19
    const/16 v18, 0x5

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_a

    .line 2638
    :pswitch_5
    const-string v18, "FavoritesProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "apps favorites delete item: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    if-nez v4, :cond_1a

    .line 2641
    sget-object v18, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v19, "DELETE from favorites where _id=?"

    invoke-virtual/range {v18 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 2643
    :cond_1a
    const/16 v18, 0x1

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2644
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    .line 2648
    :pswitch_6
    const-string v18, "FavoritesProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "apps favorites update color: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->color:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    if-nez v12, :cond_1b

    .line 2651
    sget-object v18, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v19, "UPDATE favorites set color=? where _id=?"

    .line 2652
    invoke-virtual/range {v18 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v12

    .line 2655
    :cond_1b
    const/16 v18, 0x1

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->color:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v12, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2656
    const/16 v18, 0x2

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v12, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2657
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    .line 2661
    :pswitch_7
    const-string v18, "FavoritesProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "apps favorites update restored ID: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    if-nez v14, :cond_1c

    .line 2664
    sget-object v18, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v19, "UPDATE favorites set restored=? where _id=?"

    .line 2665
    invoke-virtual/range {v18 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v14

    .line 2668
    :cond_1c
    const/16 v18, 0x1

    const-wide/16 v20, 0x0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2669
    const/16 v18, 0x2

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2670
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    .line 2674
    .end local v10    # "update":Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;
    :cond_1d
    sget-object v17, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2678
    if-eqz v8, :cond_1e

    .line 2679
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2681
    :cond_1e
    if-eqz v13, :cond_1f

    .line 2682
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2684
    :cond_1f
    if-eqz v15, :cond_20

    .line 2685
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2687
    :cond_20
    if-eqz v7, :cond_21

    .line 2688
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2690
    :cond_21
    if-eqz v11, :cond_22

    .line 2691
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2693
    :cond_22
    if-eqz v4, :cond_23

    .line 2694
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2696
    :cond_23
    sget-object v17, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_2

    .line 2487
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
