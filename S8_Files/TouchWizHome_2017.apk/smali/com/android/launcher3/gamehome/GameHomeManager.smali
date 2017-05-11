.class public Lcom/android/launcher3/gamehome/GameHomeManager;
.super Ljava/lang/Object;
.source "GameHomeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;,
        Lcom/android/launcher3/gamehome/GameHomeManager$SingletonHolder;
    }
.end annotation


# static fields
.field static final GAMEHOME_CONTENT_URI:Landroid/net/Uri;

.field private static final GAMEHOME_DATA_URI:Ljava/lang/String; = "content://com.samsung.android.game.gamehome.data/applist"

.field private static final GAME_APP_HIDDEN_ENABLE:Ljava/lang/String; = "game_home_hidden_games"

.field private static final GAME_HOME_ENABLE:Ljava/lang/String; = "game_home_enable"

.field private static final GAME_HOME_HIDDEN_MENU_DISABLE:I = 0x0

.field private static final GAME_HOME_HIDDEN_OFF:I = 0x2

.field private static final GAME_HOME_HIDDEN_ON:I = 0x1

.field public static final GAME_HOME_PACKAGE:Ljava/lang/String; = "com.samsung.android.game.gamehome"

.field public static final REQUEST_GAMEHOME_ENABLED:I = 0x65

.field private static final TAG:Ljava/lang/String;


# instance fields
.field final gameLauncherPkgName:Ljava/lang/String;

.field private mBindGameAppRunnable:Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;

.field private final mGameAppHideenSettingProviderObserver:Landroid/database/ContentObserver;

.field private final mGameHomeProviderObserver:Landroid/database/ContentObserver;

.field private final mGameHomeSettingProviderObserver:Landroid/database/ContentObserver;

.field private mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/launcher3/gamehome/GameHomeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    .line 37
    const-string v0, "content://com.samsung.android.game.gamehome.data/applist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/gamehome/GameHomeManager;->GAMEHOME_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;-><init>(Lcom/android/launcher3/gamehome/GameHomeManager;Lcom/android/launcher3/gamehome/GameHomeManager$1;)V

    iput-object v0, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mBindGameAppRunnable:Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;

    .line 281
    new-instance v0, Lcom/android/launcher3/gamehome/GameHomeManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/gamehome/GameHomeManager$1;-><init>(Lcom/android/launcher3/gamehome/GameHomeManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mGameHomeProviderObserver:Landroid/database/ContentObserver;

    .line 292
    new-instance v0, Lcom/android/launcher3/gamehome/GameHomeManager$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/gamehome/GameHomeManager$2;-><init>(Lcom/android/launcher3/gamehome/GameHomeManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mGameHomeSettingProviderObserver:Landroid/database/ContentObserver;

    .line 302
    new-instance v0, Lcom/android/launcher3/gamehome/GameHomeManager$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/gamehome/GameHomeManager$3;-><init>(Lcom/android/launcher3/gamehome/GameHomeManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mGameAppHideenSettingProviderObserver:Landroid/database/ContentObserver;

    .line 367
    const-string v0, "com.samsung.android.game.gamehome"

    iput-object v0, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->gameLauncherPkgName:Ljava/lang/String;

    .line 58
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getGameAppListFromGameHome(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 222
    const-string v0, "content://com.samsung.android.game.gamehome.data/applist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 223
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 225
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 235
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 237
    .local v8, "gameAppList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 238
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 240
    .local v9, "packageName":Ljava/lang/String;
    const-string v0, "game"

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-static {}, Lcom/android/launcher3/Utilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    sget-object v0, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGameAppListFromGameHomeProvider gameApp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    .end local v8    # "gameAppList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 227
    .local v7, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    const-string v2, "Game home provider does not exist"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    if-eqz v6, :cond_1

    .line 229
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 250
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v8

    .line 246
    .restart local v8    # "gameAppList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    if-eqz v6, :cond_1

    .line 247
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public static getInstance()Lcom/android/launcher3/gamehome/GameHomeManager;
    .locals 1

    .prologue
    .line 54
    # getter for: Lcom/android/launcher3/gamehome/GameHomeManager$SingletonHolder;->sGameHomeManager:Lcom/android/launcher3/gamehome/GameHomeManager;
    invoke-static {}, Lcom/android/launcher3/gamehome/GameHomeManager$SingletonHolder;->access$000()Lcom/android/launcher3/gamehome/GameHomeManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bindGameAppsVisibility()V
    .locals 17

    .prologue
    .line 127
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/launcher3/gamehome/GameHomeManager;->getGameAppListFromGameHome(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v3

    .line 128
    .local v3, "gameAppList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v13}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 129
    .local v10, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 131
    .local v6, "hiddenFlag":I
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 132
    sget-object v13, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    const-string v14, "GameHomeProvider does not have any item, but we should care this case."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v7

    .line 137
    .local v7, "isHomeOnly":Z
    const-string v13, "game_home_hidden_games"

    const/4 v14, 0x0

    invoke-static {v10, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 139
    .local v4, "gameHidden":I
    sget-object v13, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Game Home Hidden setting before binding : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v13, 0x1

    if-ne v4, v13, :cond_1

    .line 142
    const/4 v6, 0x4

    .line 145
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v13}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v8

    .line 146
    .local v8, "launcherModel":Lcom/android/launcher3/LauncherModel;
    if-eqz v7, :cond_3

    .line 147
    invoke-virtual {v8}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher3/home/HomeLoader;->getAllAppItemInHome()Ljava/util/ArrayList;

    move-result-object v2

    .line 149
    .local v2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v5, "hiddenApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v11, "unHiddenApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v12, "updateApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 155
    .local v1, "app":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v14

    if-eqz v14, :cond_4

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 156
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 157
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 162
    .local v9, "packageName":Ljava/lang/String;
    :goto_2
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 163
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Lcom/android/launcher3/common/base/item/ItemInfo;->setGameApp(Z)V

    .line 164
    sget-object v14, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bindGameAppsVisibility hiddenFlag = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget-object v14, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bindGameAppsVisibility "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " hidden = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_1

    .line 184
    :sswitch_0
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->isHiddenByUser()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 185
    sget-object v14, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "3. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": This app is already hidden by user, so we just remove the game hidden flag "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v14, 0x4

    invoke-virtual {v1, v14}, Lcom/android/launcher3/common/base/item/ItemInfo;->setUnHidden(I)I

    .line 187
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 147
    .end local v1    # "app":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v2    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v5    # "hiddenApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v11    # "unHiddenApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v12    # "updateApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_3
    invoke-virtual {v8}, Lcom/android/launcher3/LauncherModel;->getAppsLoader()Lcom/android/launcher3/allapps/model/AppsLoader;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher3/allapps/model/AppsLoader;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v2

    goto/16 :goto_0

    .line 159
    .restart local v1    # "app":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v2    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v5    # "hiddenApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v11    # "unHiddenApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v12    # "updateApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_4
    const/4 v9, 0x0

    .restart local v9    # "packageName":Ljava/lang/String;
    goto/16 :goto_2

    .line 168
    :sswitch_1
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->isHiddenByUser()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 169
    sget-object v14, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "1. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": This app is already hidden by user, so we just add the game hidden flag"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v14, 0x4

    invoke-virtual {v1, v14}, Lcom/android/launcher3/common/base/item/ItemInfo;->setHidden(I)I

    .line 171
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 172
    :cond_5
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->isHiddenByGame()Z

    move-result v14

    if-nez v14, :cond_2

    .line 173
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 174
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 175
    sget-object v14, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "2-0. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": This app is game app but not hidden in EASY MODE"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 177
    :cond_6
    sget-object v14, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "2. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": This app is newly added by game, so we should hide this app by game."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 188
    :cond_7
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->isHiddenByGame()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 189
    sget-object v14, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "4. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": This app is in the game list but the game hidden setting is unhidden, so we unhide this app newly."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 198
    :cond_8
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->isHiddenByUser()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->isGameApp()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 199
    sget-object v14, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "5. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": This app is remove in game launcher newly but already user hidden, so we just remove the game hidden flag "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v14, 0x4

    invoke-virtual {v1, v14}, Lcom/android/launcher3/common/base/item/ItemInfo;->setUnHidden(I)I

    .line 201
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_9
    :goto_3
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lcom/android/launcher3/common/base/item/ItemInfo;->setGameApp(Z)V

    goto/16 :goto_1

    .line 202
    :cond_a
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->isHiddenByUser()Z

    move-result v14

    if-nez v14, :cond_9

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->isHiddenByGame()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 203
    sget-object v14, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "6. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": This app is newly removed in game launcher, so we unhide this app newly."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 210
    .end local v1    # "app":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_c

    .line 211
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v14, 0x7f080096

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 214
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v14, 0x1

    invoke-virtual {v13, v5, v11, v14}, Lcom/android/launcher3/Launcher;->updateItemInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 215
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_d

    .line 216
    sget-object v13, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "just update db updateApps.size="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v13}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/android/launcher3/LauncherModel;->updateAppsOnlyDB(Ljava/util/ArrayList;)V

    .line 219
    :cond_d
    return-void

    .line 166
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method public checkGameAppList(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/gamehome/GameHomeManager;->getGameAppListFromGameHome(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    .line 258
    .local v1, "gameAppList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 259
    sget-object v2, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    const-string v3, "checkGameAppList : GameHomeProvider does not ready yet!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    return-void

    .line 263
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 264
    .local v0, "app":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 268
    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->isGameApp()Z

    move-result v2

    if-nez v2, :cond_2

    .line 269
    invoke-static {}, Lcom/android/launcher3/Utilities;->DEBUGGABLE()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 270
    sget-object v2, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is game app !!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/base/item/ItemInfo;->setGameApp(Z)V

    goto :goto_0
.end method

.method public hasGameHomeThisPackage(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)Z
    .locals 5
    .param p1, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .prologue
    const/4 v2, 0x0

    .line 398
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/launcher3/gamehome/GameHomeManager;->getGameAppListFromGameHome(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 400
    .local v0, "gameAppList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 401
    sget-object v3, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    const-string v4, "isGamePackage GameHomeProvider does not ready yet!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    :goto_0
    return v2

    .line 405
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 406
    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 407
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 408
    sget-object v2, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This app is Game : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public initGameHomeManager(Lcom/android/launcher3/Launcher;)V
    .locals 5
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .prologue
    const/4 v4, 0x0

    .line 85
    iput-object p1, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 87
    iget-object v1, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 88
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher3/gamehome/GameHomeManager;->GAMEHOME_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mGameHomeProviderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 89
    const-string v1, "game_home_enable"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mGameHomeSettingProviderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 90
    const-string v1, "game_home_hidden_games"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mGameAppHideenSettingProviderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 91
    sget-object v1, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "game_home_hidden_games init value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "game_home_hidden_games"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v1, "game_home_hidden_games"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 95
    const-string v1, "game_home_hidden_games"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    :cond_0
    return-void
.end method

.method isAppInstalled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "strAppPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 370
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 372
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_0
    return v2

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isGameHomeHidden()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 385
    iget-object v3, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 386
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v3, "game_home_hidden_games"

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 388
    .local v0, "hidden":I
    invoke-static {}, Lcom/android/launcher3/Utilities;->DEBUGGABLE()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 389
    sget-object v3, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isGameHomeHidden hidden setting value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    if-ne v0, v2, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isGamePackages(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "package1"    # Ljava/lang/String;
    .param p2, "package2"    # Ljava/lang/String;

    .prologue
    .line 320
    const/4 v1, 0x0

    .line 322
    .local v1, "ret":Z
    :try_start_0
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 323
    invoke-static {p1}, Lcom/samsung/android/game/SemGameManager;->isGamePackage(Ljava/lang/String;)Z

    move-result v2

    .line 324
    .local v2, "ret1":Z
    invoke-static {p2}, Lcom/samsung/android/game/SemGameManager;->isGamePackage(Ljava/lang/String;)Z

    move-result v3

    .line 325
    .local v3, "ret2":Z
    invoke-static {}, Lcom/android/launcher3/Utilities;->DEBUGGABLE()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 326
    sget-object v4, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 328
    const/4 v1, 0x1

    .line 341
    .end local v2    # "ret1":Z
    .end local v3    # "ret2":Z
    :cond_1
    :goto_0
    return v1

    .line 332
    :cond_2
    sget-object v4, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    const-string v5, "Game Manager is unavailable"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    const-string v5, "identifyGamePackage error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 337
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    sget-object v4, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    const-string v5, "No GameManager class!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 311
    iget-object v1, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 313
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mGameHomeProviderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 314
    iget-object v1, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mGameHomeSettingProviderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 315
    iget-object v1, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mGameAppHideenSettingProviderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 317
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method public resetGameHomeHiddenValue()V
    .locals 3

    .prologue
    .line 380
    iget-object v1, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 381
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "game_home_hidden_games"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 382
    return-void
.end method

.method public startGameHUN(Landroid/content/Context;Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item1"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p3, "item2"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 345
    const-string v3, "com.samsung.android.game.gamehome"

    invoke-virtual {p0, v3}, Lcom/android/launcher3/gamehome/GameHomeManager;->isAppInstalled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "game_home_enable"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 351
    invoke-virtual {p2}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 352
    .local v1, "itemComponent1":Landroid/content/ComponentName;
    invoke-virtual {p3}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 354
    .local v2, "itemComponent2":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 357
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/gamehome/GameHomeManager;->isGamePackages(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 358
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 359
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.game.gamehome.action.ENABLE_GAMEHOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const-string v3, "package1"

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const-string v3, "package2"

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    iget-object v3, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const/16 v4, 0x65

    invoke-static {v3, v0, v4}, Lcom/android/launcher3/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public declared-synchronized updateGameAppsVisibility()V
    .locals 1

    .prologue
    .line 100
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/gamehome/GameHomeManager;->updateGameAppsVisibility(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateGameAppsVisibility(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 105
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "game_home_hidden_games"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 106
    .local v0, "gameHidden":I
    if-eqz p1, :cond_2

    .line 107
    sget-object v2, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Game Home Hidden setting : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , game app is disabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    if-nez v0, :cond_0

    .line 114
    const-string v2, "game_home_hidden_games"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    :cond_0
    if-eqz p1, :cond_1

    .line 118
    iget-object v2, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mBindGameAppRunnable:Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;->setRunnable(Ljava/lang/Runnable;)V

    .line 120
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mBindGameAppRunnable:Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    :goto_1
    monitor-exit p0

    return-void

    .line 109
    :cond_2
    :try_start_1
    sget-object v2, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Game Home Hidden setting : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    .end local v0    # "gameHidden":I
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 123
    .restart local v0    # "gameHidden":I
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mBindGameAppRunnable:Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;

    invoke-virtual {v2}, Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
