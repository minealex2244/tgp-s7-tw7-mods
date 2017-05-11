.class public final Lcom/android/launcher3/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field private static final ACTION_EDGE_HANDLE_STATE:Ljava/lang/String; = "com.sec.android.launcher.action.EDGE_HANDLE_STATE"

.field public static final ACTION_SHOW_APPS_VIEW:Ljava/lang/String; = "com.sec.launcher.action.SHOW_APPS_VIEW"

.field public static final APPS_BUTTON_SETTING_PREFERENCE_KEY:Ljava/lang/String; = "pref_apps_button_setting"

.field public static final APPS_GRID_PREFERENCE_KEY:Ljava/lang/String; = "pref_apps_screen_grid"

.field public static final APPS_SCREEN_GRID_SUMMARY:Ljava/lang/String; = "apps_screen_grid_summary"

.field public static final ATLEAST_JB_MR1:Z

.field public static final ATLEAST_KITKAT:Z

.field public static final ATLEAST_LOLLIPOP:Z

.field public static final ATLEAST_MARSHMALLOW:Z

.field public static final ATLEAST_N:Z

.field public static final BADGE_MANAGER_PREFERENCE_KEY:Ljava/lang/String; = "badge_manager"

.field public static final CLONE_ITEM_ENABLED_PREFERENCE_KEY:Ljava/lang/String; = "pref_CloneItemEnabled"

.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field public static final DAYLITE_CLASS_NAME_MAIN:Ljava/lang/String; = "com.samsung.android.app.spage.main.MainActivity"

.field public static final DAYLITE_CLASS_NAME_SETTING:Ljava/lang/String; = "com.samsung.android.app.spage.main.settings.SettingsActivity"

.field public static final DAYLITE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.spage"

.field public static final DAYLITE_SETTING_PREFERENCE_KEY:Ljava/lang/String; = "pref_daylite_setting"

.field public static final EXTRA_ENTER_APPS_SCREEN_GRID:Ljava/lang/String; = "extra_enter_apps_screen_grid"

.field public static final EXTRA_ENTER_HIDE_APPS:Ljava/lang/String; = "extra_enter_hide_apps"

.field public static final EXTRA_ENTER_SCREEN_GRID:Ljava/lang/String; = "extra_enter_screen_grid"

.field public static final EXTRA_ENTER_WIDGETS:Ljava/lang/String; = "extra_enter_widgets"

.field public static final EXTRA_KEY_BLACK_LIST:[Ljava/lang/String;

.field private static final FLAG_SUSPENDED:I = 0x40000000

.field public static final GRID_PREFERENCE_KEY:Ljava/lang/String; = "pref_screen_grid"

.field public static final HIDE_APPS_PREFERENCE_KEY:Ljava/lang/String; = "pref_hide_apps"

.field private static final HOMEEASY_DEFAULT_PAGE_INDEX:I = 0x1

.field public static final HOMESCREEN_MODE_PREFERENCE_KEY:Ljava/lang/String; = "pref_home_screen_mode"

.field private static final HOME_DEFAULT_PAGE_INDEX:I = 0x0

.field public static final INSTALLED_PACKAGES_PREFIX:Ljava/lang/String; = "installed_packages_for_user_"

.field public static final INSTALLED_PACKAGES_PREFIX_HOME_ONLY:Ljava/lang/String; = "home_only_installed_packages_for_user_"

.field private static final KEEP_ALIVE:I = 0x1

.field private static final MAXIMUM_POOL_SIZE:I

.field public static final SCREEN_GRID_SUMMARY:Ljava/lang/String; = "screen_grid_summary"

.field public static final SUPPORT_THEME_STORE_WALLPAPERS_AND_THEMES:I = 0x0

.field public static final SUPPORT_THEME_STORE_WALLPAPERS_ONLY:I = 0x1

.field public static final SUPPORT_WALLPAPER_PICKER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Launcher.Utilities"

.field private static final THEME_STORE_INTENT:Ljava/lang/String; = "com.samsung.android.action.THEME_SERVICE_LAUNCH"

.field private static final THEME_STORE_NEW_VERSION:I = 0x4e20

.field private static final THEME_STORE_PACKAGE:Ljava/lang/String; = "com.samsung.android.themestore"

.field private static final THEME_STORE_WALLPAPER_ONLY_URI:Ljava/lang/String; = "themestore://MyTheme/Wallpaper"

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final USER_FOLDER_ID_PREFIX:Ljava/lang/String; = "user_folder_"

.field public static final USER_FOLDER_ID_PREFIX_HOME_ONLY:Ljava/lang/String; = "home_only_user_folder_"

.field public static final WIDGETS_PREFERENCE_KEY:Ljava/lang/String; = "pref_hide_widgets"

.field private static final alphanumSupEndCodePoint:I = 0x1f1ff

.field private static final alphanumSupStartCodePoint:I = 0x1f100

.field private static final arabicNumberArray:[C

.field static final cscClockPackageName:Ljava/lang/String;

.field private static final emojiEndCodePoint:I = 0x1f6ff

.field private static final emojiStartCodePoint:I = 0x1f300

.field private static final farsiNumberArray:[C

.field static final floatingClockPackageName:Ljava/lang/String;

.field private static launcherResumeCounter:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static sIsRtl:Z

.field private static final sLoc0:[I

.field private static final sLoc1:[I

.field private static sThemeStoreState:I

.field private static final sTrimPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/16 v11, 0xa

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 114
    const-string v0, "^[\\s|\\p{javaSpaceChar}]*(.*)[\\s|\\p{javaSpaceChar}]*$"

    .line 115
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/Utilities;->sTrimPattern:Ljava/util/regex/Pattern;

    .line 123
    new-array v0, v10, [I

    sput-object v0, Lcom/android/launcher3/Utilities;->sLoc0:[I

    .line 124
    new-array v0, v10, [I

    sput-object v0, Lcom/android/launcher3/Utilities;->sLoc1:[I

    .line 170
    sput v9, Lcom/android/launcher3/Utilities;->sThemeStoreState:I

    .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    move v0, v8

    :goto_0
    sput-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_N:Z

    .line 174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    move v0, v8

    :goto_1
    sput-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_LOLLIPOP:Z

    .line 177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    move v0, v8

    :goto_2
    sput-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_KITKAT:Z

    .line 180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    move v0, v8

    :goto_3
    sput-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_JB_MR1:Z

    .line 183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4

    move v0, v8

    :goto_4
    sput-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    .line 189
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/android/launcher3/Utilities;->CPU_COUNT:I

    .line 190
    sget v0, Lcom/android/launcher3/Utilities;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/launcher3/Utilities;->CORE_POOL_SIZE:I

    .line 191
    sget v0, Lcom/android/launcher3/Utilities;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/launcher3/Utilities;->MAXIMUM_POOL_SIZE:I

    .line 200
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/android/launcher3/Utilities;->CORE_POOL_SIZE:I

    sget v3, Lcom/android/launcher3/Utilities;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 204
    const-string v0, "SEC_FLOATING_FEATURE_CLOCK_CONFIG_PACKAGE_NAME"

    const-string v1, "com.sec.android.app.clockpackage"

    invoke-static {v0, v1}, Lcom/android/launcher3/features/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/Utilities;->floatingClockPackageName:Ljava/lang/String;

    .line 206
    const-string v0, "CscFeature_Clock_ConfigReplacePackage"

    invoke-static {v0}, Lcom/android/launcher3/features/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/Utilities;->cscClockPackageName:Ljava/lang/String;

    .line 209
    new-array v0, v11, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher3/Utilities;->arabicNumberArray:[C

    .line 213
    new-array v0, v11, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/launcher3/Utilities;->farsiNumberArray:[C

    .line 217
    new-array v0, v11, [Ljava/lang/String;

    const-string v1, "isCreateShortcut"

    aput-object v1, v0, v9

    const-string v1, "FROM_SHORTCUT"

    aput-object v1, v0, v8

    const-string v1, "package"

    aput-object v1, v0, v10

    const/4 v1, 0x3

    const-string v2, "extra_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "tName"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "duplicate"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "isShortCut"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "key.from"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "fromAppShortCut"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "i_from"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher3/Utilities;->EXTRA_KEY_BLACK_LIST:[Ljava/lang/String;

    .line 1570
    sput v9, Lcom/android/launcher3/Utilities;->launcherResumeCounter:I

    return-void

    :cond_0
    move v0, v9

    .line 172
    goto/16 :goto_0

    :cond_1
    move v0, v9

    .line 174
    goto/16 :goto_1

    :cond_2
    move v0, v9

    .line 177
    goto/16 :goto_2

    :cond_3
    move v0, v9

    .line 180
    goto/16 :goto_3

    :cond_4
    move v0, v9

    .line 183
    goto/16 :goto_4

    .line 209
    nop

    :array_0
    .array-data 2
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
    .end array-data

    .line 213
    :array_1
    .array-data 2
        0x660s
        0x661s
        0x662s
        0x663s
        0x6f4s
        0x6f5s
        0x6f6s
        0x667s
        0x668s
        0x669s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DEBUGGABLE()Z
    .locals 1

    .prologue
    .line 804
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    const/4 v0, 0x0

    .line 807
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    goto :goto_0
.end method

.method public static addToPersonal(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1341
    const-string v0, "com.samsung.intent.action.LAUNCH_PERSONA_SHORTCUT"

    .line 1343
    .local v0, "PERSONA_SHORTCUT":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "userId"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1344
    .local v4, "userId":I
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1345
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "persona_shortcut://"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1346
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1347
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v5, "package"

    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    const-string v5, "component"

    invoke-virtual {v1, v5, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1349
    const-string v5, "label"

    invoke-virtual {v1, v5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    const-string v5, "iconBitmap"

    invoke-virtual {v1, v5, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1351
    const-string v5, "personalId"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1352
    const-string v5, "commandType"

    const-string v6, "createShortcut"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1354
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1358
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "userId":I
    :goto_0
    return-void

    .line 1355
    :catch_0
    move-exception v2

    .line 1356
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "Launcher.Utilities"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in adding shortcut to personal."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static addToPersonal(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1361
    .local p1, "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1362
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1363
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 1364
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    move-object v4, v1

    .line 1365
    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1368
    :cond_1
    if-eqz v0, :cond_0

    .line 1372
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1373
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isPossibleAddToPersonal(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 1374
    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v4, v4, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p0, v2, v0, v4, v6}, Lcom/android/launcher3/Utilities;->addToPersonal(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1378
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method static appLauncherBoosting(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 383
    new-instance v0, Lcom/android/launcher3/util/DvfsUtil;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/DvfsUtil;-><init>(Landroid/content/Context;)V

    .line 384
    .local v0, "dvfsUtil":Lcom/android/launcher3/util/DvfsUtil;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/DvfsUtil;->acquireAppLaunch(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public static assertWorkerThread()V
    .locals 2

    .prologue
    .line 555
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 556
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 558
    :cond_0
    return-void
.end method

.method static broadcastStkIntent(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1447
    :try_start_0
    const-string v3, "1"

    const/4 v4, 0x0

    const-string v5, "gsm.sim.screenEvent"

    const-string v6, "0"

    invoke-static {v4, v5, v6}, Landroid/telephony/TelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "1"

    const/4 v4, 0x1

    const-string v5, "gsm.sim.screenEvent"

    const-string v6, "0"

    .line 1448
    invoke-static {v4, v5, v6}, Landroid/telephony/TelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1449
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.intent.action.stk.event"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1450
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Lcom/android/launcher3/util/CatEventDownload;

    invoke-direct {v0}, Lcom/android/launcher3/util/CatEventDownload;-><init>()V

    .line 1451
    .local v0, "catEventIdleScreen":Lcom/android/launcher3/util/CatEventDownload;
    const-string v3, "STK EVENT"

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/CatEventDownload;->putExtra(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1452
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1453
    const-string v3, "Launcher.Utilities"

    const-string v4, "broadcastStkIntent sent"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1458
    .end local v0    # "catEventIdleScreen":Lcom/android/launcher3/util/CatEventDownload;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 1455
    :catch_0
    move-exception v1

    .line 1456
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    const-string v3, "Launcher.Utilities"

    const-string v4, "NoSuchMethodError occur broadcastStkIntent."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static buildActivityOptions(Landroid/view/View;)Landroid/os/Bundle;
    .locals 7
    .param p0, "v"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 452
    const/4 v2, 0x0

    .line 453
    .local v2, "opts":Landroid/app/ActivityOptions;
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v4

    if-nez v4, :cond_2

    .line 454
    const/4 v1, 0x0

    .line 455
    .local v1, "fromHomescreen":Z
    instance-of v4, p0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v4, :cond_1

    move-object v4, p0

    .line 456
    check-cast v4, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/IconView;->getIconDisplay()I

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, p0

    check-cast v4, Lcom/android/launcher3/common/view/IconView;

    .line 457
    invoke-virtual {v4}, Lcom/android/launcher3/common/view/IconView;->getIconDisplay()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 458
    :cond_0
    const/4 v1, 0x1

    .line 462
    :cond_1
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SEM_INT:I

    const/16 v5, 0x963

    if-lt v4, v5, :cond_2

    .line 464
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 463
    invoke-static {p0, v4, v5, v1}, Landroid/app/ActivityOptions;->semMakeCustomScaleUpAnimation(Landroid/view/View;IIZ)Landroid/app/ActivityOptions;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 470
    .end local v1    # "fromHomescreen":Z
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 471
    .local v3, "optsBundle":Landroid/os/Bundle;
    :goto_1
    return-object v3

    .line 466
    .end local v3    # "optsBundle":Landroid/os/Bundle;
    .restart local v1    # "fromHomescreen":Z
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const-string v4, "Launcher.Utilities"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startActivitySafely : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 470
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    .end local v1    # "fromHomescreen":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static canDisable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 725
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isBlockUninstallAndDisableByEDM(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 731
    :cond_0
    :goto_0
    return v0

    .line 729
    :cond_1
    invoke-static {p0, p1}, Lcom/android/launcher3/Utilities;->canUninstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/launcher3/common/model/DisableableAppCache;->mDisableableItems:Ljava/util/ArrayList;

    .line 730
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher3/common/model/DisableableAppCache;->mDisableBlockedItems:Ljava/util/ArrayList;

    .line 731
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static canUninstall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 707
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 708
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    sget-object v5, Lcom/android/launcher3/common/model/DisableableAppCache;->mUninstallBlockedItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 710
    :try_start_0
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isBlockUninstallAndDisableByEDM(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 721
    :cond_0
    :goto_0
    return v4

    .line 714
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 715
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/16 v3, 0x81

    .line 716
    .local v3, "systemApp":I
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v5, v3

    if-nez v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 717
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "systemApp":I
    :catch_0
    move-exception v1

    .line 718
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Launcher.Utilities"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canUninstall:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static changeEdgeHandleState(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isShow"    # Z

    .prologue
    .line 1431
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1443
    :cond_0
    :goto_0
    return-void

    .line 1435
    :cond_1
    invoke-static {}, Lcom/android/launcher3/Utilities;->isKnoxMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isEdgeDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1439
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1440
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.launcher.action.EDGE_HANDLE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1441
    const-string v1, "isShow"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1442
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static checkClockPackageName(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 836
    const-string v0, ""

    sget-object v1, Lcom/android/launcher3/Utilities;->cscClockPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 837
    sget-object v0, Lcom/android/launcher3/Utilities;->cscClockPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 847
    :goto_0
    return-object v0

    .line 840
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 844
    :cond_1
    sget-object v0, Lcom/android/launcher3/Utilities;->floatingClockPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 845
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 847
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static checkThemeStoreState(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1111
    const-string v0, "com.samsung.android.themestore"

    invoke-static {p0, v0}, Lcom/android/launcher3/Utilities;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x4e20

    if-lt v0, v1, :cond_2

    .line 1112
    invoke-static {}, Lcom/android/launcher3/Utilities;->isGuest()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/Utilities;->isKnoxMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1113
    :cond_0
    const/4 v0, 0x1

    sput v0, Lcom/android/launcher3/Utilities;->sThemeStoreState:I

    .line 1120
    :goto_0
    sget v0, Lcom/android/launcher3/Utilities;->sThemeStoreState:I

    return v0

    .line 1115
    :cond_1
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher3/Utilities;->sThemeStoreState:I

    goto :goto_0

    .line 1118
    :cond_2
    const/4 v0, 0x2

    sput v0, Lcom/android/launcher3/Utilities;->sThemeStoreState:I

    goto :goto_0
.end method

.method public static clearBadge(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 1092
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1094
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BADGE_COUNT_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1095
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "badge_count_package_name"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1096
    const-string v2, "badge_count_class_name"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1097
    const-string v2, "badge_count"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1098
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1099
    if-eqz p2, :cond_1

    .line 1100
    invoke-virtual {p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1108
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1102
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1104
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1105
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Launcher.Utilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeBadge():Can\'t send the broadcast >>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static closeDialog(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 1544
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1545
    .local v1, "manager":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1547
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-static {v1}, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1548
    invoke-static {v0, v1}, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 1549
    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1557
    :cond_0
    :goto_0
    return-void

    .line 1550
    :cond_1
    invoke-static {v1}, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1551
    invoke-static {v0, v1}, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 1552
    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 1553
    :cond_2
    invoke-static {v1}, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1554
    invoke-static {v0, v1}, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 1555
    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public static compareByStage(Ljava/util/ArrayList;FFFF)Z
    .locals 10
    .param p1, "value1"    # F
    .param p2, "value2"    # F
    .param p3, "level"    # F
    .param p4, "max"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Range;",
            ">;FFFF)Z"
        }
    .end annotation

    .prologue
    .local p0, "rangeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Range;>;"
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1497
    const/4 v7, 0x0

    cmpl-float v7, p3, v7

    if-eqz v7, :cond_3

    .line 1498
    div-float v7, p4, p3

    float-to-double v4, v7

    .line 1499
    .local v4, "unitValue":D
    float-to-double v8, p1

    div-double/2addr v8, v4

    double-to-int v0, v8

    .line 1500
    .local v0, "left":I
    float-to-double v8, p2

    div-double/2addr v8, v4

    double-to-int v2, v8

    .line 1501
    .local v2, "right":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 1502
    .local v1, "range":Landroid/util/Range;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1508
    .end local v0    # "left":I
    .end local v1    # "range":Landroid/util/Range;
    .end local v2    # "right":I
    .end local v4    # "unitValue":D
    :cond_1
    :goto_0
    return v3

    .line 1506
    .restart local v0    # "left":I
    .restart local v2    # "right":I
    .restart local v4    # "unitValue":D
    :cond_2
    if-eq v0, v2, :cond_1

    move v3, v6

    goto :goto_0

    .end local v0    # "left":I
    .end local v2    # "right":I
    .end local v4    # "unitValue":D
    :cond_3
    move v3, v6

    .line 1508
    goto :goto_0
.end method

.method public static createAppsButton(Landroid/content/Context;)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 1381
    new-instance v0, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {v0}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    .line 1382
    .local v0, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 1383
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.launcher.action.SHOW_APPS_VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 1384
    iput v3, v0, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    .line 1385
    iput-boolean v3, v0, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    .line 1386
    const-wide/16 v2, -0x65

    iput-wide v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 1388
    return-object v0
.end method

.method public static createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 5
    .param p0, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 623
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%s IN (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    const-string v4, ", "

    invoke-static {v4, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dpiFromPx(ILandroid/util/DisplayMetrics;)F
    .locals 3
    .param p0, "size"    # I
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 608
    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x43200000    # 160.0f

    div-float v0, v1, v2

    .line 609
    .local v0, "densityRatio":F
    int-to-float v1, p0

    div-float/2addr v1, v0

    return v1
.end method

.method public static findSystemApk(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/util/Pair;
    .locals 9
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation

    .prologue
    .line 505
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 506
    .local v2, "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    invoke-virtual {p1, v2, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 507
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_0

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 509
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 511
    .local v3, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 512
    .local v4, "res":Landroid/content/res/Resources;
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 518
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "res":Landroid/content/res/Resources;
    :goto_1
    return-object v5

    .line 513
    .restart local v1    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "Launcher.Utilities"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to find resources for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 518
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static findVacantCellToLeftTop([IIIII[[ZII)Z
    .locals 8
    .param p0, "vacant"    # [I
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I
    .param p3, "xCount"    # I
    .param p4, "yCount"    # I
    .param p5, "occupied"    # [[Z
    .param p6, "datumX"    # I
    .param p7, "datumY"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 960
    if-gt p6, p3, :cond_0

    if-le p7, p4, :cond_1

    :cond_0
    move v5, v6

    .line 1008
    :goto_0
    return v5

    .line 964
    :cond_1
    aput v6, p0, v6

    .line 965
    aput v6, p0, v5

    .line 966
    move v4, p7

    .local v4, "y":I
    :goto_1
    if-ltz v4, :cond_10

    add-int v7, v4, p2

    if-gt v7, p4, :cond_10

    .line 967
    if-ne v4, p7, :cond_8

    .line 968
    move v3, p6

    .local v3, "x":I
    :goto_2
    if-ltz v3, :cond_f

    add-int v7, v3, p1

    if-gt v7, p3, :cond_f

    .line 969
    aget-object v7, p5, v3

    aget-boolean v7, v7, v4

    if-nez v7, :cond_3

    move v0, v5

    .line 971
    .local v0, "available":Z
    :goto_3
    move v1, v3

    .local v1, "i":I
    :goto_4
    add-int v7, v3, p1

    if-ge v1, v7, :cond_2

    .line 972
    move v2, v4

    .local v2, "j":I
    :goto_5
    add-int v7, v4, p2

    if-ge v2, v7, :cond_6

    .line 973
    if-eqz v0, :cond_4

    aget-object v7, p5, v1

    aget-boolean v7, v7, v2

    if-nez v7, :cond_4

    move v0, v5

    .line 974
    :goto_6
    if-nez v0, :cond_5

    .line 980
    .end local v2    # "j":I
    :cond_2
    if-eqz v0, :cond_7

    .line 981
    aput v3, p0, v6

    .line 982
    aput v4, p0, v5

    goto :goto_0

    .end local v0    # "available":Z
    .end local v1    # "i":I
    :cond_3
    move v0, v6

    .line 969
    goto :goto_3

    .restart local v0    # "available":Z
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    :cond_4
    move v0, v6

    .line 973
    goto :goto_6

    .line 972
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 971
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 968
    .end local v2    # "j":I
    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 987
    .end local v0    # "available":Z
    .end local v1    # "i":I
    .end local v3    # "x":I
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "x":I
    :goto_7
    add-int v7, v3, p1

    if-gt v7, p3, :cond_f

    .line 988
    aget-object v7, p5, v3

    aget-boolean v7, v7, v4

    if-nez v7, :cond_a

    move v0, v5

    .line 990
    .restart local v0    # "available":Z
    :goto_8
    move v1, v3

    .restart local v1    # "i":I
    :goto_9
    add-int v7, v3, p1

    if-ge v1, v7, :cond_9

    .line 991
    move v2, v4

    .restart local v2    # "j":I
    :goto_a
    add-int v7, v4, p2

    if-ge v2, v7, :cond_d

    .line 992
    if-eqz v0, :cond_b

    aget-object v7, p5, v1

    aget-boolean v7, v7, v2

    if-nez v7, :cond_b

    move v0, v5

    .line 993
    :goto_b
    if-nez v0, :cond_c

    .line 999
    .end local v2    # "j":I
    :cond_9
    if-eqz v0, :cond_e

    .line 1000
    aput v3, p0, v6

    .line 1001
    aput v4, p0, v5

    goto :goto_0

    .end local v0    # "available":Z
    .end local v1    # "i":I
    :cond_a
    move v0, v6

    .line 988
    goto :goto_8

    .restart local v0    # "available":Z
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    :cond_b
    move v0, v6

    .line 992
    goto :goto_b

    .line 991
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 990
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 987
    .end local v2    # "j":I
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 966
    .end local v0    # "available":Z
    .end local v1    # "i":I
    :cond_f
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .end local v3    # "x":I
    :cond_10
    move v5, v6

    .line 1008
    goto :goto_0
.end method

.method public static findVacantCellToRightBottom([IIIII[[ZII)Z
    .locals 8
    .param p0, "vacant"    # [I
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I
    .param p3, "xCount"    # I
    .param p4, "yCount"    # I
    .param p5, "occupied"    # [[Z
    .param p6, "datumX"    # I
    .param p7, "datumY"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 923
    if-gt p6, p3, :cond_0

    if-le p7, p4, :cond_1

    .line 954
    :cond_0
    :goto_0
    return v6

    .line 927
    :cond_1
    aput v6, p0, v6

    .line 928
    aput v6, p0, v5

    .line 929
    move v4, p7

    .local v4, "y":I
    :goto_1
    add-int v7, v4, p2

    if-gt v7, p4, :cond_0

    .line 930
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_2
    add-int v7, v3, p1

    if-gt v7, p3, :cond_9

    .line 931
    if-ne v4, p7, :cond_3

    if-ge v3, p6, :cond_3

    .line 930
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 935
    :cond_3
    aget-object v7, p5, v3

    aget-boolean v7, v7, v4

    if-nez v7, :cond_5

    move v0, v5

    .line 937
    .local v0, "available":Z
    :goto_3
    move v1, v3

    .local v1, "i":I
    :goto_4
    add-int v7, v3, p1

    if-ge v1, v7, :cond_4

    .line 938
    move v2, v4

    .local v2, "j":I
    :goto_5
    add-int v7, v4, p2

    if-ge v2, v7, :cond_8

    .line 939
    if-eqz v0, :cond_6

    aget-object v7, p5, v1

    aget-boolean v7, v7, v2

    if-nez v7, :cond_6

    move v0, v5

    .line 940
    :goto_6
    if-nez v0, :cond_7

    .line 946
    .end local v2    # "j":I
    :cond_4
    if-eqz v0, :cond_2

    .line 947
    aput v3, p0, v6

    .line 948
    aput v4, p0, v5

    move v6, v5

    .line 949
    goto :goto_0

    .end local v0    # "available":Z
    .end local v1    # "i":I
    :cond_5
    move v0, v6

    .line 935
    goto :goto_3

    .restart local v0    # "available":Z
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    :cond_6
    move v0, v6

    .line 939
    goto :goto_6

    .line 938
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 937
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 929
    .end local v0    # "available":Z
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static flattenBitmap(Landroid/graphics/Bitmap;)[B
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 527
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x4

    .line 528
    .local v2, "size":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 530
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 531
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 532
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 533
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 536
    :goto_0
    return-object v3

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Launcher.Utilities"

    const-string v4, "Could not write bitmap"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static generateRandomNumber()I
    .locals 4

    .prologue
    .line 1532
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 1533
    .local v0, "r":Ljava/util/Random;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Random;->setSeed(J)V

    .line 1534
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    return v1
.end method

.method public static generateRandomNumber(I)I
    .locals 4
    .param p0, "limit"    # I

    .prologue
    .line 1538
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 1539
    .local v0, "r":Ljava/util/Random;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Random;->setSeed(J)V

    .line 1540
    invoke-virtual {v0, p0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    return v1
.end method

.method public static getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1012
    if-eqz p0, :cond_1

    .line 1014
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1016
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1020
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1022
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_1
    return-object v3

    .line 1017
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 1018
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 1020
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v3, ""

    goto :goto_1

    .line 1022
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    const-string v3, ""

    goto :goto_1
.end method

.method public static getCenterDeltaInScreenSpace(Landroid/view/View;Landroid/view/View;[I)[I
    .locals 7
    .param p0, "v0"    # Landroid/view/View;
    .param p1, "v1"    # Landroid/view/View;
    .param p2, "delta"    # [I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 343
    sget-object v0, Lcom/android/launcher3/Utilities;->sLoc0:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 344
    sget-object v0, Lcom/android/launcher3/Utilities;->sLoc1:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 346
    sget-object v0, Lcom/android/launcher3/Utilities;->sLoc0:[I

    aget v1, v0, v4

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v4

    .line 347
    sget-object v0, Lcom/android/launcher3/Utilities;->sLoc0:[I

    aget v1, v0, v5

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v5

    .line 348
    sget-object v0, Lcom/android/launcher3/Utilities;->sLoc1:[I

    aget v1, v0, v4

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v4

    .line 349
    sget-object v0, Lcom/android/launcher3/Utilities;->sLoc1:[I

    aget v1, v0, v5

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v5

    .line 351
    if-nez p2, :cond_0

    .line 352
    const/4 v0, 0x2

    new-array p2, v0, [I

    .line 355
    :cond_0
    sget-object v0, Lcom/android/launcher3/Utilities;->sLoc1:[I

    aget v0, v0, v4

    sget-object v1, Lcom/android/launcher3/Utilities;->sLoc0:[I

    aget v1, v1, v4

    sub-int/2addr v0, v1

    aput v0, p2, v4

    .line 356
    sget-object v0, Lcom/android/launcher3/Utilities;->sLoc1:[I

    aget v0, v0, v5

    sget-object v1, Lcom/android/launcher3/Utilities;->sLoc0:[I

    aget v1, v1, v5

    sub-int/2addr v0, v1

    aput v0, p2, v5

    .line 358
    return-object p2
.end method

.method public static getClockPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 853
    const-string v0, ""

    sget-object v1, Lcom/android/launcher3/Utilities;->cscClockPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 854
    sget-object v0, Lcom/android/launcher3/Utilities;->cscClockPackageName:Ljava/lang/String;

    .line 856
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/launcher3/Utilities;->floatingClockPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getCustomerPageKey(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1224
    .line 1225
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1224
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1227
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "customerPagePref"

    const-wide/16 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F
    .locals 11
    .param p0, "descendant"    # Landroid/view/View;
    .param p1, "root"    # Landroid/view/View;
    .param p2, "coord"    # [I
    .param p3, "includeRootScroll"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v0, "ancestorChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v7, 0x2

    new-array v3, v7, [F

    aget v7, p2, v9

    int-to-float v7, v7

    aput v7, v3, v9

    aget v7, p2, v10

    int-to-float v7, v7

    aput v7, v3, v10

    .line 253
    .local v3, "pt":[F
    move-object v5, p0

    .line 254
    .local v5, "v":Landroid/view/View;
    :goto_0
    if-eq v5, p1, :cond_0

    if-eqz v5, :cond_0

    .line 255
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/view/View;

    if-eqz v7, :cond_0

    .line 257
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .end local v5    # "v":Landroid/view/View;
    check-cast v5, Landroid/view/View;

    .restart local v5    # "v":Landroid/view/View;
    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    const/high16 v4, 0x3f800000    # 1.0f

    .line 265
    .local v4, "scale":F
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 266
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 267
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 270
    .local v6, "v0":Landroid/view/View;
    if-ne v6, p0, :cond_1

    if-eqz p3, :cond_2

    .line 271
    :cond_1
    aget v7, v3, v9

    invoke-virtual {v6}, Landroid/view/View;->getScrollX()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    aput v7, v3, v9

    .line 272
    aget v7, v3, v10

    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    aput v7, v3, v10

    .line 275
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 276
    aget v7, v3, v9

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    aput v7, v3, v9

    .line 277
    aget v7, v3, v10

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    aput v7, v3, v10

    .line 278
    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    move-result v7

    mul-float/2addr v4, v7

    .line 266
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 281
    .end local v6    # "v0":Landroid/view/View;
    :cond_3
    aget v7, v3, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    aput v7, p2, v9

    .line 282
    aget v7, v3, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    aput v7, p2, v10

    .line 283
    return v4
.end method

.method public static getEditTextMaxLengthFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "maxSize"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 627
    new-array v0, v3, [Landroid/text/InputFilter;

    .line 629
    .local v0, "FilterArray":[Landroid/text/InputFilter;
    const v2, 0x7f08004c

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 631
    .local v1, "mToast":Landroid/widget/Toast;
    new-instance v2, Lcom/android/launcher3/Utilities$1;

    invoke-direct {v2, p1, v1}, Lcom/android/launcher3/Utilities$1;-><init>(ILandroid/widget/Toast;)V

    aput-object v2, v0, v5

    .line 676
    return-object v0
.end method

.method public static getFullScreenHeight(Landroid/app/Activity;)I
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 765
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 766
    .local v0, "size":Landroid/graphics/Point;
    invoke-static {p0, v0}, Lcom/android/launcher3/Utilities;->getFullScreenSize(Landroid/app/Activity;Landroid/graphics/Point;)V

    .line 767
    iget v1, v0, Landroid/graphics/Point;->y:I

    return v1
.end method

.method public static getFullScreenSize(Landroid/app/Activity;Landroid/graphics/Point;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "size"    # Landroid/graphics/Point;

    .prologue
    .line 759
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 760
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 762
    :cond_0
    return-void
.end method

.method public static getHomeDefaultPageKey(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1231
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1232
    const-string v0, "com.sec.android.app.launcher.homeeasy.defaultpage.prefs"

    invoke-static {p0, v0}, Lcom/android/launcher3/Utilities;->getHomeDefaultPageKey(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1238
    :goto_0
    return v0

    .line 1234
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1235
    const-string v0, "com.sec.android.app.launcher.homeonly.defaultpage.prefs"

    invoke-static {p0, v0}, Lcom/android/launcher3/Utilities;->getHomeDefaultPageKey(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1238
    :cond_1
    const-string v0, "com.sec.android.app.launcher.home.defaultpage.prefs"

    invoke-static {p0, v0}, Lcom/android/launcher3/Utilities;->getHomeDefaultPageKey(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getHomeDefaultPageKey(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1278
    .line 1279
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    .line 1278
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1281
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "com.sec.android.app.launcher.homeeasy.defaultpage.prefs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1282
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1284
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method public static getLocale(Landroid/content/Context;)Ljava/util/Locale;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1462
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_N:Z

    if-eqz v0, :cond_0

    .line 1463
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 1465
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_0
.end method

.method public static getRandomColor(F)I
    .locals 8
    .param p0, "colorAlpha"    # F

    .prologue
    .line 1322
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p0

    float-to-int v0, v1

    .line 1323
    .local v0, "alpha":I
    shl-int/lit8 v1, v0, 0x18

    const v2, 0xffffff

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x416fffffe0000000L    # 1.6777215E7

    mul-double/2addr v4, v6

    double-to-int v3, v4

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    return v1
.end method

.method public static getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "size"    # Landroid/graphics/Point;

    .prologue
    .line 745
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 746
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 747
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 748
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 749
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p1, Landroid/graphics/Point;->x:I

    .line 750
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p1, Landroid/graphics/Point;->y:I

    .line 756
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-void

    .line 752
    .restart local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v1    # "res":Landroid/content/res/Resources;
    :cond_1
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p1, Landroid/graphics/Point;->x:I

    .line 753
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p1, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method public static getStringByLocale(Landroid/app/Activity;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "id"    # I
    .param p2, "locale"    # Ljava/lang/String;

    .prologue
    .line 1560
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1561
    .local v0, "configuration":Landroid/content/res/Configuration;
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 1562
    invoke-virtual {p0, v0}, Landroid/app/Activity;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 860
    const/4 v1, -0x1

    .line 861
    .local v1, "invalidVersion":I
    if-eqz p0, :cond_0

    .line 862
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 863
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    .line 865
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 866
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v4

    .line 867
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 868
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Launcher.Utilities"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVersionCode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getZeroPageKey(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1297
    .line 1298
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    .line 1297
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1299
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static hasPermissionForActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "srcPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1044
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1045
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1046
    .local v1, "target":Landroid/content/pm/ResolveInfo;
    if-nez v1, :cond_1

    .line 1088
    :cond_0
    :goto_0
    return v3

    .line 1050
    :cond_1
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v2

    .line 1052
    goto :goto_0

    .line 1054
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1060
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v4, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 1065
    sget-boolean v4, Lcom/android/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-nez v4, :cond_3

    move v3, v2

    .line 1067
    goto :goto_0

    .line 1072
    :cond_3
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v3, v2

    .line 1075
    goto :goto_0

    .line 1084
    :cond_4
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, p2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x17

    if-lt v4, v5, :cond_5

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_1

    .line 1085
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static hideNavigationBar(Landroid/view/Window;Z)V
    .locals 3
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "hideBar"    # Z

    .prologue
    .line 820
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 821
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 822
    .local v0, "decorView":Landroid/view/View;
    if-eqz p1, :cond_1

    .line 823
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 824
    .local v1, "uiOptions":I
    or-int/lit8 v1, v1, 0x2

    .line 825
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 832
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "uiOptions":I
    :cond_0
    :goto_0
    return-void

    .line 827
    .restart local v0    # "decorView":Landroid/view/View;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 828
    .restart local v1    # "uiOptions":I
    and-int/lit8 v1, v1, -0x3

    .line 829
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public static hideStatusBar(Landroid/view/Window;Z)V
    .locals 1
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "hideBar"    # Z

    .prologue
    const/16 v0, 0x800

    .line 812
    if-eqz p1, :cond_0

    .line 813
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 817
    :goto_0
    return-void

    .line 815
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method public static isAppEnabled(Landroid/content/Context;Lcom/android/launcher3/common/base/item/IconInfo;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 1404
    const-string v1, ""

    .line 1405
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 1406
    .local v0, "compName":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 1407
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1409
    :cond_0
    if-eqz v0, :cond_1

    .line 1410
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1413
    :cond_1
    invoke-static {p0, v1}, Lcom/android/launcher3/Utilities;->isAppEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public static isAppEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1417
    const/4 v0, 0x0

    .line 1418
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1420
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1425
    if-eqz v0, :cond_0

    iget-boolean v4, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    .line 1421
    :catch_0
    move-exception v1

    .line 1422
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "strAppPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1392
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1395
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1400
    :goto_0
    return v2

    .line 1396
    :catch_0
    move-exception v0

    .line 1397
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v0, 0x0

    .line 1030
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_N:Z

    if-eqz v1, :cond_0

    .line 1031
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1033
    :cond_0
    return v0
.end method

.method public static isBlockUninstallAndDisableByEDM(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 735
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 736
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 737
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getDisableableAppCache()Lcom/android/launcher3/common/model/DisableableAppCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 738
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getDisableableAppCache()Lcom/android/launcher3/common/model/DisableableAppCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/model/DisableableAppCache;->isBlockUninstall(Ljava/lang/String;)Z

    move-result v0

    .line 741
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmoji(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 686
    const v0, 0x1f300

    if-gt v0, p0, :cond_0

    const v0, 0x1f6ff

    if-gt p0, v0, :cond_0

    .line 687
    const/4 v0, 0x1

    .line 689
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnableBtnBg(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1160
    const/4 v1, 0x0

    .line 1161
    .local v1, "isEnableBtnBg":Z
    if-eqz p0, :cond_0

    .line 1162
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1164
    .local v2, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "show_button_background"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 1169
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return v1

    .line 1164
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1165
    :catch_0
    move-exception v0

    .line 1166
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isEnclosedAlphanumSuppplement(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 699
    const v0, 0x1f100

    if-gt v0, p0, :cond_0

    const v0, 0x1f1ff

    if-gt p0, v0, :cond_0

    .line 700
    const/4 v0, 0x1

    .line 703
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExistSdCard(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1512
    const/4 v1, 0x0

    .line 1514
    .local v1, "isExistSdCard":Z
    :try_start_0
    const-string v6, "storage"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 1515
    .local v2, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v4

    .line 1516
    .local v4, "storageVolumeList":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 1517
    .local v3, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->semGetSubSystem()Ljava/lang/String;

    move-result-object v5

    .line 1518
    .local v5, "subSystem":Ljava/lang/String;
    const-string v7, "sd"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    .line 1519
    const/4 v1, 0x1

    .line 1527
    .end local v2    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v3    # "storageVolume":Landroid/os/storage/StorageVolume;
    .end local v4    # "storageVolumeList":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    .end local v5    # "subSystem":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v6, "Launcher.Utilities"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isExistSdCard = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    return v1

    .line 1523
    :catch_0
    move-exception v0

    .line 1524
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "Launcher.Utilities"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isExistSdCard e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isGuest()Z
    .locals 1

    .prologue
    .line 800
    invoke-static {}, Landroid/os/UserHandle;->semGetCallingUserId()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKnoxMode()Z
    .locals 2

    .prologue
    .line 796
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLauncherAppTarget(Landroid/content/Intent;)Z
    .locals 10
    .param p0, "launchIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 569
    if-eqz p0, :cond_9

    const-string v6, "android.intent.action.MAIN"

    .line 570
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 571
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 572
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 573
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-ne v6, v4, :cond_9

    const-string v6, "android.intent.category.LAUNCHER"

    .line 574
    invoke-virtual {p0, v6}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "android.intent.category.INFO"

    .line 575
    invoke-virtual {p0, v6}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 576
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 578
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 579
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 604
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return v4

    .line 582
    .restart local v0    # "extras":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 583
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 584
    const/4 v1, 0x0

    .line 585
    .local v1, "isInBlackList":Z
    sget-object v6, Lcom/android/launcher3/Utilities;->EXTRA_KEY_BLACK_LIST:[Ljava/lang/String;

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/launcher3/Utilities;->EXTRA_KEY_BLACK_LIST:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_3

    .line 586
    sget-object v7, Lcom/android/launcher3/Utilities;->EXTRA_KEY_BLACK_LIST:[Ljava/lang/String;

    array-length v8, v7

    move v6, v5

    :goto_1
    if-ge v6, v8, :cond_3

    aget-object v2, v7, v6

    .line 587
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 588
    const/4 v1, 0x1

    .line 593
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_5

    .line 594
    const-string v5, "Launcher.Utilities"

    const-string v6, "isAppShortcut : This shortcut has extra infos in black list"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 586
    .restart local v2    # "key":Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 597
    .end local v2    # "key":Ljava/lang/String;
    :cond_5
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    if-ne v6, v4, :cond_6

    const-string v6, "profile"

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_6
    move v4, v5

    goto :goto_0

    .line 600
    .end local v1    # "isInBlackList":Z
    :cond_7
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    if-ne v6, v4, :cond_8

    const-string v6, "profile"

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_8
    move v4, v5

    goto :goto_0

    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_9
    move v4, v5

    .line 604
    goto :goto_0
.end method

.method public static isMobileKeyboardMode()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1327
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1328
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNfcHwKeyboard()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1329
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 1337
    :cond_1
    :goto_0
    return v2

    .line 1332
    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1333
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v4, v2, :cond_1

    .end local v0    # "conf":Landroid/content/res/Configuration;
    :cond_3
    move v2, v3

    .line 1337
    goto :goto_0
.end method

.method public static isNeededToTestLauncherResume()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1584
    const/16 v0, 0xa

    .line 1585
    .local v0, "MINIMUM_COUNT":I
    sget v1, Lcom/android/launcher3/Utilities;->launcherResumeCounter:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 771
    const/4 v1, 0x0

    .line 773
    .local v1, "exist":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 774
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 775
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 776
    const/4 v1, 0x1

    .line 783
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v1

    .line 778
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const-string v3, "Launcher.Utilities"

    const-string v4, "PackageManager is null in isPackageExist() "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 780
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 781
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Launcher.Utilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not installed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isPropertyEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 231
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isSamsungMembersEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 883
    const/4 v0, 0x0

    .line 884
    .local v0, "result":Z
    const-string v1, "com.samsung.android.voc"

    .line 885
    .local v1, "samsungMembersPackageName":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 886
    invoke-static {p0, v1}, Lcom/android/launcher3/Utilities;->isAppEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 887
    invoke-static {p0, v1}, Lcom/android/launcher3/Utilities;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const v3, 0xa220268

    if-lt v2, v3, :cond_0

    .line 888
    const/4 v0, 0x1

    .line 892
    :cond_0
    return v0
.end method

.method public static isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 475
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 476
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 477
    .local v0, "cn":Landroid/content/ComponentName;
    const/4 v3, 0x0

    .line 478
    .local v3, "packageName":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 479
    const/high16 v6, 0x10000

    invoke-virtual {v4, p1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 480
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_0

    .line 481
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 486
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 488
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 489
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_1

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_1

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    .line 495
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_1
    return v5

    .line 484
    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 491
    :catch_0
    move-exception v1

    .line 492
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method public static isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1475
    const/4 v1, 0x0

    .line 1476
    .local v1, "talkbackEnabled":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1478
    .local v0, "accesibilityService":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1481
    const-string v2, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    .line 1482
    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 1485
    :cond_1
    :goto_0
    return v1

    .line 1482
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static launcherResumeTesterEnd()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1579
    sget v0, Lcom/android/launcher3/Utilities;->launcherResumeCounter:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/launcher3/Utilities;->launcherResumeCounter:I

    .line 1580
    return-void
.end method

.method public static launcherResumeTesterStart()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1574
    sget v0, Lcom/android/launcher3/Utilities;->launcherResumeCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/launcher3/Utilities;->launcherResumeCounter:I

    .line 1575
    return-void
.end method

.method public static loadCurrentGridSize(Landroid/content/Context;[I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "xy"    # [I

    .prologue
    .line 916
    .line 917
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    .line 916
    invoke-static {p0, p1, v0}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentGridSize(Landroid/content/Context;[IZ)V

    .line 918
    return-void
.end method

.method public static mapCoordInSelfToDescendent(Landroid/view/View;Landroid/view/View;[I)F
    .locals 13
    .param p0, "descendant"    # Landroid/view/View;
    .param p1, "root"    # Landroid/view/View;
    .param p2, "coord"    # [I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 287
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v1, "ancestorChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v9, 0x2

    new-array v6, v9, [F

    aget v9, p2, v11

    int-to-float v9, v9

    aput v9, v6, v11

    aget v9, p2, v12

    int-to-float v9, v9

    aput v9, v6, v12

    .line 291
    .local v6, "pt":[F
    move-object v8, p0

    .line 292
    .local v8, "v":Landroid/view/View;
    :goto_0
    if-eq v8, p1, :cond_0

    .line 293
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    .end local v8    # "v":Landroid/view/View;
    check-cast v8, Landroid/view/View;

    .restart local v8    # "v":Landroid/view/View;
    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    const/high16 v7, 0x3f800000    # 1.0f

    .line 299
    .local v7, "scale":F
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 300
    .local v4, "inverse":Landroid/graphics/Matrix;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 301
    .local v2, "count":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_3

    .line 302
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 303
    .local v0, "ancestor":Landroid/view/View;
    if-lez v3, :cond_2

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    move-object v5, v9

    .line 305
    .local v5, "next":Landroid/view/View;
    :goto_2
    aget v9, v6, v11

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    aput v9, v6, v11

    .line 306
    aget v9, v6, v12

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    aput v9, v6, v12

    .line 308
    if-eqz v5, :cond_1

    .line 309
    aget v9, v6, v11

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    aput v9, v6, v11

    .line 310
    aget v9, v6, v12

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    aput v9, v6, v12

    .line 311
    invoke-virtual {v5}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 312
    invoke-virtual {v4, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 313
    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v9

    mul-float/2addr v7, v9

    .line 301
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 303
    .end local v5    # "next":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 317
    .end local v0    # "ancestor":Landroid/view/View;
    :cond_3
    aget v9, v6, v11

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    aput v9, p2, v11

    .line 318
    aget v9, v6, v12

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    aput v9, p2, v12

    .line 319
    return v7
.end method

.method public static pointInView(Landroid/view/View;FFF)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .prologue
    .line 329
    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 330
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static printCallStack(Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1590
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1591
    .local v0, "stackTrace":[Ljava/lang/StackTraceElement;
    const-string v1, "Launcher.Utilities"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallStack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-3:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    const-string v1, "Launcher.Utilities"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallStack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-4:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    return-void
.end method

.method public static pxFromDp(FLandroid/util/DisplayMetrics;)I
    .locals 1
    .param p0, "size"    # F
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 613
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static pxFromSp(FLandroid/util/DisplayMetrics;)I
    .locals 1
    .param p0, "size"    # F
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 618
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static rectAboutCenter(Landroid/graphics/Rect;)V
    .locals 4
    .param p0, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 362
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 363
    .local v0, "cx":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 364
    .local v1, "cy":I
    neg-int v2, v0

    neg-int v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 365
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 366
    return-void
.end method

.method public static removeAppsInFolder(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/folder/FolderInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1304
    .local p0, "folderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/folder/FolderInfo;>;"
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1305
    .local v3, "folderItemMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1306
    .local v6, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_1

    .line 1307
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 1308
    .local v1, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1309
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1312
    .local v5, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1306
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1314
    .end local v1    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v5    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :cond_1
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1315
    .local v2, "folderInfoKeySet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/launcher3/folder/FolderInfo;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 1316
    .restart local v1    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1317
    .local v0, "appsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/FolderInfo;->remove(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1319
    .end local v0    # "appsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v1    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_2
    return-void
.end method

.method public static scaleRect(Landroid/graphics/Rect;F)V
    .locals 2
    .param p0, "r"    # Landroid/graphics/Rect;
    .param p1, "scale"    # F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 334
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 335
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 336
    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 337
    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 338
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 340
    :cond_0
    return-void
.end method

.method public static setHomeDefaultPageKey(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultPage"    # I

    .prologue
    .line 1244
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1245
    const-string v0, "com.sec.android.app.launcher.homeeasy.defaultpage.prefs"

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/Utilities;->setHomeDefaultPageKey(Landroid/content/Context;ILjava/lang/String;)V

    .line 1254
    :goto_0
    return-void

    .line 1247
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1248
    const-string v0, "com.sec.android.app.launcher.homeonly.defaultpage.prefs"

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/Utilities;->setHomeDefaultPageKey(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 1251
    :cond_1
    const-string v0, "com.sec.android.app.launcher.home.defaultpage.prefs"

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/Utilities;->setHomeDefaultPageKey(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static setHomeDefaultPageKey(Landroid/content/Context;ILjava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultPage"    # I
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1257
    const/4 v2, -0x1

    if-ge p1, v2, :cond_0

    .line 1258
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: setHomeDefaultPageKey use wrong defaultPage - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1262
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1261
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1262
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1263
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1264
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1265
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/util/logging/SALogging;->updateDefaultPageLog()V

    .line 1268
    const-string v2, "com.sec.android.app.launcher.home.defaultpage.prefs"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1269
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProviderID()Lcom/android/launcher3/LauncherProviderID;

    move-result-object v1

    .line 1270
    .local v1, "providerID":Lcom/android/launcher3/LauncherProviderID;
    if-eqz v1, :cond_1

    .line 1271
    const-string v2, "Launcher.Utilities"

    const-string v3, "[SPRINT] updating home screen index of prefs table"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProviderID;->updateScreenIndex()V

    .line 1275
    .end local v1    # "providerID":Lcom/android/launcher3/LauncherProviderID;
    :cond_1
    return-void
.end method

.method public static setZeroPageKey(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1289
    const-string v1, "Launcher.Utilities"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setZeroPageKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1290
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1291
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1292
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1293
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1294
    return-void
.end method

.method private static showThemeWarningDialog()V
    .locals 0

    .prologue
    .line 1157
    return-void
.end method

.method public static simplifyDecimalFraction(FII)F
    .locals 6
    .param p0, "value"    # F
    .param p1, "validDecimalPlace"    # I
    .param p2, "interval"    # I

    .prologue
    .line 787
    if-lez p1, :cond_0

    .line 788
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    int-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 789
    .local v0, "decimalPlace":F
    mul-float v1, p0, v0

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/2addr v1, p2

    int-to-float v1, v1

    div-float p0, v1, v0

    .line 791
    .end local v0    # "decimalPlace":F
    .end local p0    # "value":F
    :cond_0
    return p0
.end method

.method public static startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    const v2, 0x7f080002

    const/4 v1, 0x0

    .line 371
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 380
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 374
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 376
    const-string v1, "Launcher.Utilities"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "or use the exported attribute for this activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static startActivitySafely(Landroid/app/Activity;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    .line 388
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {p0, p2}, Lcom/android/launcher3/Utilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 389
    const v8, 0x7f080175

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 390
    const/4 v8, 0x0

    .line 430
    :goto_0
    return v8

    .line 393
    :cond_0
    invoke-static {p0, p2}, Lcom/android/launcher3/Utilities;->appLauncherBoosting(Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 395
    const/high16 v8, 0x10000000

    invoke-virtual {p2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 399
    if-eqz p1, :cond_3

    :try_start_0
    const-string v8, "com.android.launcher3.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

    .line 400
    invoke-virtual {p2, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v3, 0x1

    .line 401
    .local v3, "useLaunchAnimation":Z
    :goto_1
    invoke-static {p0}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v1

    .line 402
    .local v1, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    invoke-static {p0}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v7

    .line 404
    .local v7, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    const/4 v6, 0x0

    .line 405
    .local v6, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    const-string v8, "profile"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 406
    const-string v8, "profile"

    const-wide/16 v10, -0x1

    invoke-virtual {p2, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 407
    .local v4, "serialNumber":J
    invoke-virtual {v7, v4, v5}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v6

    .line 410
    .end local v4    # "serialNumber":J
    :cond_1
    if-eqz v3, :cond_4

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->buildActivityOptions(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v2

    .line 412
    .local v2, "optsBundle":Landroid/os/Bundle;
    :goto_2
    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 413
    :cond_2
    invoke-static {p0, p2, v2}, Lcom/android/launcher3/Utilities;->startActivityVmPolicy(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 419
    :goto_3
    const/4 v8, 0x1

    goto :goto_0

    .line 400
    .end local v1    # "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    .end local v2    # "optsBundle":Landroid/os/Bundle;
    .end local v3    # "useLaunchAnimation":Z
    .end local v6    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v7    # "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 410
    .restart local v1    # "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    .restart local v3    # "useLaunchAnimation":Z
    .restart local v6    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .restart local v7    # "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 416
    .restart local v2    # "optsBundle":Landroid/os/Bundle;
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 417
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 416
    invoke-virtual {v1, v8, v6, v9, v2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->startActivityForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 420
    .end local v1    # "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    .end local v2    # "optsBundle":Landroid/os/Bundle;
    .end local v3    # "useLaunchAnimation":Z
    .end local v6    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v7    # "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const v8, 0x7f080002

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 422
    const-string v8, "Launcher.Utilities"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to launch. tag="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " intent="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_4
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 423
    :catch_1
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/SecurityException;
    const v8, 0x7f080002

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 425
    const-string v8, "Launcher.Utilities"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Launcher does not have the permission to launch "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "or use the exported attribute for this activity. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "tag="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " intent="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private static startActivityVmPolicy(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "optsBundle"    # Landroid/os/Bundle;

    .prologue
    .line 434
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 439
    .local v0, "oldPolicy":Landroid/os/StrictMode$VmPolicy;
    :try_start_0
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 440
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 439
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 443
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 447
    return-void

    .line 445
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    throw v1
.end method

.method public static startContactUsActivity(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 896
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isSamsungMembersEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 897
    const-string v3, "com.sec.android.app.launcher"

    .line 898
    .local v3, "packageName":Ljava/lang/String;
    const-string v0, "lwyvkp07y7"

    .line 899
    .local v0, "appId":Ljava/lang/String;
    const-string v1, "TouchWiz home"

    .line 900
    .local v1, "appName":Ljava/lang/String;
    const-string v4, "voc://view/contactUs"

    .line 902
    .local v4, "url":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 903
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "packageName"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 904
    const-string v5, "appId"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 905
    const-string v5, "appName"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 907
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 908
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 913
    .end local v0    # "appId":Ljava/lang/String;
    .end local v1    # "appName":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 910
    .restart local v0    # "appId":Ljava/lang/String;
    .restart local v1    # "appName":Ljava/lang/String;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "url":Ljava/lang/String;
    :cond_1
    const-string v5, "Launcher.Utilities"

    const-string v6, "ContactUS(SamsungMembers) is not enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static startThemeStore(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1124
    const-string v4, "Launcher.Utilities"

    const-string v5, "onClickWallpapersAndThemesButton"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1127
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.samsung.android.themestore"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1129
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 1130
    iget-boolean v4, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_2

    .line 1131
    sget v4, Lcom/android/launcher3/Utilities;->sThemeStoreState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1132
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1133
    .local v3, "themeIntent":Landroid/content/Intent;
    const-string v4, "themestore://MyTheme/Wallpaper"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1134
    const v4, 0x4000020

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1139
    :goto_0
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1140
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1141
    const-string v4, "UpButton"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1142
    const-string v4, "prevPackage"

    const-string v5, "homeScreen"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1143
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1153
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "themeIntent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 1137
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.action.THEME_SERVICE_LAUNCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3    # "themeIntent":Landroid/content/Intent;
    goto :goto_0

    .line 1145
    .end local v3    # "themeIntent":Landroid/content/Intent;
    :cond_2
    invoke-static {}, Lcom/android/launcher3/Utilities;->showThemeWarningDialog()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1148
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 1149
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Launcher.Utilities"

    const-string v5, "ThemeStore is not installed."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1150
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 1151
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "Launcher.Utilities"

    const-string v5, "Unable to launch OpenThemes."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static startVoiceRecognitionActivity(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    .line 1194
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1197
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "calling_package"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1200
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080098

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1201
    .local v1, "speakNowStr":Ljava/lang/String;
    const-string v2, "android.speech.extra.PROMPT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1204
    const-string v2, "android.speech.extra.LANGUAGE_MODEL"

    const-string v3, "free_form"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1209
    const-string v2, "android.speech.extra.MAX_RESULTS"

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1219
    const-string v2, "TAG"

    const-string v3, "start voice recognition activity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    check-cast p0, Lcom/android/launcher3/Launcher;

    .end local p0    # "context":Landroid/content/Context;
    invoke-static {p0, v0, p2}, Lcom/android/launcher3/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 1221
    return-void
.end method

.method public static toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "engNumber"    # Ljava/lang/String;
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 1173
    const/4 v3, 0x0

    .line 1174
    .local v3, "numberArray":[C
    const-string v4, "ar"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1175
    sget-object v3, Lcom/android/launcher3/Utilities;->arabicNumberArray:[C

    .line 1180
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1181
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_3

    .line 1182
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1183
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 1184
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1185
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    aget-char v4, v3, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1183
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1176
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_2
    const-string v4, "fa"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1177
    sget-object v3, Lcom/android/launcher3/Utilities;->farsiNumberArray:[C

    goto :goto_0

    .line 1189
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static trim(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 545
    if-nez p0, :cond_0

    .line 546
    const/4 v1, 0x0

    .line 551
    :goto_0
    return-object v1

    .line 550
    :cond_0
    sget-object v1, Lcom/android/launcher3/Utilities;->sTrimPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 551
    .local v0, "m":Ljava/util/regex/Matcher;
    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
