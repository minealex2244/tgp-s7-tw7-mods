.class public Lcom/android/launcher3/common/view/LiveIconManager;
.super Ljava/lang/Object;
.source "LiveIconManager.java"


# static fields
.field public static final CALENDAR_ALARM_INTENT_NAME:Ljava/lang/String; = "com.samsung.action.MIDNIGHT_LIVEICONUPDATE"

.field public static final CLOCK_ALARM_INTENT_NAME:Ljava/lang/String; = "com.samsung.action.EVERY_MINUTE_CLOCK_UPDATE"

.field private static final DEFAULT_PACKAGE_NAME_ANDROID_CALENDAR:Ljava/lang/String; = "com.android.calendar"

.field private static final DEFAULT_PACKAGE_NAME_CLOCK:Ljava/lang/String; = "com.sec.android.app.clockpackage"

.field private static final DEFAULT_PACKAGE_NAME_SAMSUNG_CALENDAR:Ljava/lang/String; = "com.samsung.android.calendar"

.field private static final TAG:Ljava/lang/String;

.field private static final sCache:Lcom/android/launcher3/common/view/BitmapCacheContainer;

.field private static sFactories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ">;",
            "Lcom/android/launcher3/common/view/LiveIconFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/launcher3/common/view/LiveIconManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/view/LiveIconManager;->TAG:Ljava/lang/String;

    .line 92
    new-instance v0, Lcom/android/launcher3/common/view/BitmapCacheContainer;

    invoke-direct {v0}, Lcom/android/launcher3/common/view/BitmapCacheContainer;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/view/LiveIconManager;->sCache:Lcom/android/launcher3/common/view/BitmapCacheContainer;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/view/LiveIconManager;->sFactories:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyKnoxLiveIcon(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/base/item/IconInfo;)Z
    .locals 4
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    const/4 v1, 0x0

    .line 223
    iget-object v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-static {v2}, Lcom/android/launcher3/common/view/LiveIconManager;->isKnoxLiveIcon(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    const-string v3, "liveicon_cmpname"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v1

    .line 225
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/common/view/LiveIconManager;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 226
    const/4 v1, 0x1

    .line 228
    .end local v0    # "pkgName":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public static clearLiveIconCache(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 232
    sget-object v0, Lcom/android/launcher3/common/view/LiveIconManager;->sCache:Lcom/android/launcher3/common/view/BitmapCacheContainer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/view/BitmapCacheContainer;->removeBitmapCache(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method private static createLiveIconBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 161
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    .local v1, "factoryKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;>;"
    sget-object v2, Lcom/android/launcher3/common/view/LiveIconManager;->sFactories:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/LiveIconFactory;

    .line 163
    .local v0, "factory":Lcom/android/launcher3/common/view/LiveIconFactory;
    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lcom/android/launcher3/common/view/LiveIconFactory;

    .end local v0    # "factory":Lcom/android/launcher3/common/view/LiveIconFactory;
    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/common/view/LiveIconFactory;-><init>(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 165
    .restart local v0    # "factory":Lcom/android/launcher3/common/view/LiveIconFactory;
    sget-object v2, Lcom/android/launcher3/common/view/LiveIconManager;->sFactories:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/view/LiveIconFactory;->create(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static final getCalendarPackages()Ljava/util/List;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.samsung.android.calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.calendar"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static final getCscClockPackageName()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 62
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 63
    .local v0, "feature":Lcom/samsung/android/feature/SemFloatingFeature;
    if-nez v0, :cond_0

    .line 64
    const-string v1, "com.sec.android.app.clockpackage"

    .line 67
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "CscFeature_Clock_ConfigReplacePackage"

    const-string v2, "com.sec.android.app.clockpackage"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static final getFloatingClockPackageName()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 50
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    .line 51
    .local v1, "feature":Lcom/samsung/android/feature/SemFloatingFeature;
    if-nez v1, :cond_0

    .line 52
    const-string v2, "com.sec.android.app.clockpackage"

    .line 56
    :goto_0
    return-object v2

    .line 55
    :cond_0
    const-string v0, "SEC_FLOATING_FEATURE_CLOCK_CONFIG_PACKAGE_NAME"

    .line 56
    .local v0, "FLOATING_FEATURE_KEY":Ljava/lang/String;
    const-string v2, "SEC_FLOATING_FEATURE_CLOCK_CONFIG_PACKAGE_NAME"

    const-string v3, "com.sec.android.app.clockpackage"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 114
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/common/view/LiveIconManager;->requestRefreshLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 117
    sget-object v2, Lcom/android/launcher3/common/view/LiveIconManager;->sCache:Lcom/android/launcher3/common/view/BitmapCacheContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/launcher3/common/view/BitmapCacheContainer;->getBitmapCache(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    .local v0, "liveIconBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 119
    sget-object v2, Lcom/android/launcher3/common/view/LiveIconManager;->TAG:Ljava/lang/String;

    const-string v3, "getLiveIcon: complete(cached)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 127
    .end local v0    # "liveIconBitmap":Landroid/graphics/Bitmap;
    .local v1, "liveIconBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 124
    .end local v1    # "liveIconBitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "liveIconBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/common/view/LiveIconManager;->createLiveIconBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 125
    sget-object v2, Lcom/android/launcher3/common/view/LiveIconManager;->sCache:Lcom/android/launcher3/common/view/BitmapCacheContainer;

    invoke-virtual {v2, p1, p2, v0}, Lcom/android/launcher3/common/view/BitmapCacheContainer;->putBitmapCache(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/graphics/Bitmap;)V

    .line 126
    sget-object v2, Lcom/android/launcher3/common/view/LiveIconManager;->TAG:Ljava/lang/String;

    const-string v3, "getLiveIcon: complete(sync_created)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 127
    .end local v0    # "liveIconBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "liveIconBitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private static final getLiveIconPackages()Ljava/util/List;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.samsung.android.calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 77
    invoke-static {}, Lcom/android/launcher3/common/view/LiveIconManager;->getFloatingClockPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 78
    invoke-static {}, Lcom/android/launcher3/common/view/LiveIconManager;->getCscClockPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 74
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isCalendarPackage(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 173
    if-nez p0, :cond_0

    .line 174
    const/4 v1, 0x0

    .line 178
    :goto_0
    return v1

    .line 177
    :cond_0
    invoke-static {}, Lcom/android/launcher3/common/view/LiveIconManager;->getCalendarPackages()Ljava/util/List;

    move-result-object v0

    .line 178
    .local v0, "calendars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isKnoxLiveIcon(Landroid/content/Intent;)Z
    .locals 6
    .param p0, "launchIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 210
    invoke-static {p0}, Lcom/android/launcher3/common/view/IconView;->isKnoxShortcut(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    const-string v4, "userid"

    const/4 v5, -0x1

    invoke-virtual {p0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-long v2, v4

    .line 212
    .local v2, "userId":J
    const-string v4, "liveicon_cmpname"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v0, v4, v1

    .line 215
    const-wide/16 v4, 0x64

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    invoke-static {v0}, Lcom/android/launcher3/common/view/LiveIconManager;->isLiveIconPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 218
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v2    # "userId":J
    :cond_0
    return v1
.end method

.method public static isLiveIconPackage(Lcom/android/launcher3/common/base/item/IconInfo;)Z
    .locals 2
    .param p0, "iconInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 184
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    .line 185
    :cond_0
    const/4 v1, 0x0

    .line 189
    :goto_0
    return v1

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/launcher3/common/view/LiveIconManager;->isLiveIconPackage(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isLiveIconPackage(Ljava/lang/String;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 195
    if-eqz p0, :cond_1

    .line 196
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object p0, v2, v1

    .line 200
    :cond_0
    invoke-static {}, Lcom/android/launcher3/common/view/LiveIconManager;->getLiveIconPackages()Ljava/util/List;

    move-result-object v0

    .line 201
    .local v0, "liveIconPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    const/4 v1, 0x1

    .line 205
    .end local v0    # "liveIconPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return v1
.end method

.method public static onResponseLiveIcon(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p2, "liveIconBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 145
    sget-object v0, Lcom/android/launcher3/common/view/LiveIconManager;->sCache:Lcom/android/launcher3/common/view/BitmapCacheContainer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/common/view/BitmapCacheContainer;->putBitmapCache(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/graphics/Bitmap;)V

    .line 146
    sget-object v0, Lcom/android/launcher3/common/view/LiveIconManager;->TAG:Ljava/lang/String;

    const-string v1, "onResponseLiveIcon: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method private static requestRefreshLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 133
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    .local v1, "factoryKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;>;"
    sget-object v2, Lcom/android/launcher3/common/view/LiveIconManager;->sFactories:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/LiveIconFactory;

    .line 135
    .local v0, "factory":Lcom/android/launcher3/common/view/LiveIconFactory;
    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/android/launcher3/common/view/LiveIconFactory;

    .end local v0    # "factory":Lcom/android/launcher3/common/view/LiveIconFactory;
    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/common/view/LiveIconFactory;-><init>(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 137
    .restart local v0    # "factory":Lcom/android/launcher3/common/view/LiveIconFactory;
    sget-object v2, Lcom/android/launcher3/common/view/LiveIconManager;->sFactories:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/view/LiveIconFactory;->requestCreate(Landroid/content/Context;)Z

    .line 141
    return-void
.end method

.method public static setCalendarAlarm(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 242
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 243
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.samsung.action.MIDNIGHT_LIVEICONUPDATE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x8000000

    invoke-static {p0, v7, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 246
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 247
    .local v1, "calendar":Ljava/util/Calendar;
    const/4 v3, 0x5

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v6}, Ljava/util/Calendar;->add(II)V

    .line 248
    const/16 v3, 0xb

    invoke-virtual {v1, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 249
    const/16 v3, 0xc

    invoke-virtual {v1, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 250
    const/16 v3, 0xd

    invoke-virtual {v1, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 251
    const/16 v3, 0xe

    invoke-virtual {v1, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 252
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 254
    .local v4, "tomorrowAtMillis":J
    invoke-virtual {v0, v7, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 255
    return-void
.end method

.method public static setClockAlarm(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 265
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 266
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.action.EVERY_MINUTE_CLOCK_UPDATE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x8000000

    invoke-static {p0, v7, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 269
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 270
    .local v1, "calendar":Ljava/util/Calendar;
    const/16 v5, 0xc

    invoke-virtual {v1, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 271
    const/16 v5, 0xd

    invoke-virtual {v1, v5, v7}, Ljava/util/Calendar;->set(II)V

    .line 272
    const/16 v5, 0xe

    invoke-virtual {v1, v5, v7}, Ljava/util/Calendar;->set(II)V

    .line 273
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 275
    .local v2, "nextMinuteAtMillis":J
    invoke-virtual {v0, v8, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 276
    return-void
.end method
