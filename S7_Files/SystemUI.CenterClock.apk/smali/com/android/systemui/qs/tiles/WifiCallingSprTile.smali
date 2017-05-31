.class public Lcom/android/systemui/qs/tiles/WifiCallingSprTile;
.super Lcom/android/systemui/qs/QSTile;
.source "WifiCallingSprTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/WifiCallingSprTile$1;,
        Lcom/android/systemui/qs/tiles/WifiCallingSprTile$2;,
        Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcEnableTask;,
        Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcProvisionedTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_IMS_SIMLOADED:Ljava/lang/String; = "com.samsung.ims.action.onsimloaded"

.field private static final CSC_SPRINT_VOWIFI:Ljava/lang/String; = "CscFeature_Common_EnableSprintExtension"

.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field private static final SPR_WFC_APP_PACKAGE_NAME:Ljava/lang/String; = "com.sec.sprint.wfc"

.field private static final TRANSITIONING_TO_OFF:I = 0x2

.field private static final TRANSITIONING_TO_ON:I = 0x3

.field private static final WFC_APP_PACKAGE_NAME:Ljava/lang/String; = "com.oem.smartwifisupport"

.field public static final WFC_DISABLE:I = 0x0

.field public static final WFC_ENABLE:I = 0x1

.field private static final WFC_IS_PROVISIONED_CONTENT_URI:Landroid/net/Uri;

.field private static final WFC_STATE_CONTENT_URI:Landroid/net/Uri;

.field private static final WIFICALLING_SETTINGS_SPR:Landroid/content/Intent;

.field private static final WIFI_CALLING_ACTION:Ljava/lang/String; = "com.sec.sprint.wfc.WIFI_CALLING"

.field private static final WIFI_CALLING_AIR_PLANE_MODE_ACTION:Landroid/content/Intent;

.field private static final WIFI_CALLING_SETTINGS_CLASS:Ljava/lang/String; = "com.sec.sprint.wfc.ui.WfcSettings"

.field private static isButtonDim:Z

.field private static mSprVowifiState:Z


# instance fields
.field private mIsWfcProvisioned:Z

.field private mListening:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiCallingObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->WIFICALLING_SETTINGS_SPR:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get2()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->WIFI_CALLING_AIR_PLANE_MODE_ACTION:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Lcom/android/systemui/qs/QSTile$Host;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mIsWfcProvisioned:Z

    return v0
.end method

.method static synthetic -get5()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mSprVowifiState:Z

    return v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->isButtonDim:Z

    return p0
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mIsWfcProvisioned:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->isWfcProvisioned()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->queryWfcState()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->updateWfcState(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.sprint.wfc.WFC_AIR_PLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->WIFI_CALLING_AIR_PLANE_MODE_ACTION:Landroid/content/Intent;

    .line 54
    const-string/jumbo v0, "content://com.sec.sprint.wfc.provider/wfc_state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->WFC_STATE_CONTENT_URI:Landroid/net/Uri;

    .line 55
    const-string/jumbo v0, "content://com.sec.sprint.wfc.provider/wfc_is_provisioned"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->WFC_IS_PROVISIONED_CONTENT_URI:Landroid/net/Uri;

    .line 60
    sput-boolean v2, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mSprVowifiState:Z

    .line 61
    sput-boolean v2, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->isButtonDim:Z

    .line 206
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    .line 207
    const-string/jumbo v2, "com.sec.sprint.wfc"

    const-string/jumbo v3, "com.sec.sprint.wfc.ui.WfcSettings"

    .line 206
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->WIFICALLING_SETTINGS_SPR:Landroid/content/Intent;

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 62
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mIsWfcProvisioned:Z

    .line 87
    new-instance v1, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$1;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 195
    new-instance v1, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$2;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mWifiCallingObserver:Landroid/database/ContentObserver;

    .line 75
    check-cast p1, Lcom/android/systemui/statusbar/phone/QSTileHost;

    .end local p1    # "host":Lcom/android/systemui/qs/QSTile$Host;
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 76
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_SPRWFC:Z

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->isSprVowifiExist(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mSprVowifiState:Z

    .line 80
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v1, "com.samsung.ims.action.onsimloaded"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 73
    return-void
.end method

.method private handleSprVowifiClick(Z)V
    .locals 5
    .param p1, "mode"    # Z

    .prologue
    const/4 v4, 0x1

    .line 258
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-nez v1, :cond_1

    .line 259
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mIsWfcProvisioned:Z

    if-nez v1, :cond_0

    .line 260
    new-instance v1, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcProvisionedTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcProvisionedTask;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcProvisionedTask;)V

    new-array v2, v4, [Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcProvisionedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 261
    return-void

    .line 263
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    sget-object v2, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->WIFI_CALLING_AIR_PLANE_MODE_ACTION:Landroid/content/Intent;

    invoke-interface {v1, v2}, Lcom/android/systemui/qs/QSTile$Host;->startActivityDismissingKeyguard(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivityDismissingKeyguard() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    sput-boolean v4, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->isButtonDim:Z

    .line 273
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->updateWfcState(Z)V

    .line 274
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->refreshState()V

    .line 257
    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 291
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 292
    .local v0, "state":Z
    :goto_0
    const-string/jumbo v1, "com.sec.sprint.wfc"

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->isPackageEnabled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    const/4 v0, 0x0

    .line 295
    :cond_0
    return v0

    .line 291
    .end local v0    # "state":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "state":Z
    goto :goto_0
.end method

.method private static isPackageEnabled(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 308
    const/4 v2, 0x0

    .line 309
    .local v2, "isVoWifiEnabled":Z
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 310
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    .line 312
    :try_start_0
    invoke-virtual {v3, p0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 313
    .local v0, "appState":I
    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v2, 0x1

    .line 320
    .end local v0    # "appState":I
    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->setVowifiState(Z)V

    .line 321
    return v2

    .line 313
    .restart local v0    # "appState":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 314
    .end local v0    # "appState":I
    :catch_0
    move-exception v1

    .line 315
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->setVowifiState(Z)V

    .line 316
    return v4
.end method

.method public static isSprVowifiExist(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 299
    const-string/jumbo v0, "com.sec.sprint.wfc"

    invoke-static {v0, p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->isPackageEnabled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.oem.smartwifisupport"

    invoke-static {v0, p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->isPackageEnabled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    :cond_0
    const-string/jumbo v0, "WifiCallingTile"

    const-string/jumbo v1, "vowifi true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v0, 0x1

    return v0

    .line 303
    :cond_1
    const-string/jumbo v0, "WifiCallingTile"

    const-string/jumbo v1, "vowifi false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method private isWfcEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 182
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->queryWfcState()I

    move-result v0

    .line 183
    .local v0, "state":I
    if-ne v1, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWfcProvisioned()Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 241
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 242
    .local v8, "isProvisioned":Ljava/lang/Boolean;
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->WFC_IS_PROVISIONED_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 244
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 246
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 251
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 254
    :cond_1
    :goto_0
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 248
    :catch_0
    move-exception v7

    .line 249
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 250
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 251
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 250
    throw v0
.end method

.method private queryWfcState()I
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 347
    const/4 v8, 0x0

    .line 349
    .local v8, "state":I
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->WFC_STATE_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 351
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 353
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 358
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_1
    :goto_0
    return v8

    .line 355
    :catch_0
    move-exception v7

    .line 356
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 357
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 358
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 357
    throw v0
.end method

.method private registerObserverForSprWfc()V
    .locals 4

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->WFC_STATE_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mWifiCallingObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "VoWiFi Quick Button WfcObserver registered!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void
.end method

.method private setMode(Z)V
    .locals 3
    .param p1, "mode"    # Z

    .prologue
    .line 187
    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mSprVowifiState:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->handleSprVowifiClick(Z)V

    .line 186
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi_call_enable"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 191
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateWfcState(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    const/4 v3, 0x0

    .line 279
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 280
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "state"

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->WFC_STATE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 277
    return-void

    .line 280
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 152
    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mSprVowifiState:Z

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->WIFICALLING_SETTINGS_SPR:Landroid/content/Intent;

    return-object v0

    .line 155
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 178
    const/16 v0, 0x1f4

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f03ba

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleClick()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 142
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->getMetricsCategory()I

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 144
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleClick : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    if-eqz v0, :cond_1

    .line 146
    return-void

    :cond_0
    move v0, v2

    .line 142
    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->setMode(Z)V

    .line 141
    return-void

    :cond_2
    move v1, v2

    .line 147
    goto :goto_1
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->isWfcEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 166
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f03ba

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 167
    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mSprVowifiState:Z

    if-eqz v0, :cond_0

    .line 168
    const v0, 0x7f0203f6

    invoke-static {v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 172
    :goto_0
    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->isButtonDim:Z

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    .line 164
    return-void

    .line 170
    :cond_0
    const v0, 0x7f020400

    invoke-static {v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 164
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 128
    invoke-static {}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->getVowifiState()Z

    move-result v0

    .line 129
    .local v0, "isavailable":Z
    const-string/jumbo v4, "ro.csc.sales_code"

    const-string/jumbo v5, "unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "salesCode":Ljava/lang/String;
    const-string/jumbo v4, "ro.csc.omcnw_code"

    const-string/jumbo v5, "unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "omcNwCode":Ljava/lang/String;
    const-string/jumbo v4, "unknown"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 134
    .end local v0    # "isavailable":Z
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isavailable is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-eqz v0, :cond_1

    .line 137
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->getTileSpec()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/systemui/qs/QSTile$Host;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 135
    :cond_1
    :goto_1
    return v3

    .line 132
    .restart local v0    # "isavailable":Z
    :cond_2
    const/4 v0, 0x0

    .local v0, "isavailable":Z
    goto :goto_0

    .line 137
    .end local v0    # "isavailable":Z
    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mListening:Z

    if-ne v0, p1, :cond_0

    .line 113
    return-void

    .line 114
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mListening:Z

    .line 115
    if-eqz p1, :cond_1

    .line 116
    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mSprVowifiState:Z

    if-eqz v0, :cond_2

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->registerObserverForSprWfc()V

    .line 118
    return-void

    .line 121
    :cond_1
    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mSprVowifiState:Z

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mWifiCallingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 111
    :cond_2
    return-void
.end method
