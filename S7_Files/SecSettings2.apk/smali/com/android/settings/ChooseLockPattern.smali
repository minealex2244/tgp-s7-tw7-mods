.class public Lcom/android/settings/ChooseLockPattern;
.super Lcom/android/settings/SettingsActivity;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;,
        Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;
    }
.end annotation


# static fields
.field private static mAppLockBackupKey:Ljava/lang/String;

.field private static mForAppLockBackupKey:Z

.field private static mForFingerprint:Z

.field private static mForIris:Z

.field private static mForPrivateModeBackupKey:Z

.field private static mFromAppLock:Z

.field private static mFromPersonalPage:Z

.field private static mIsEnforcedMultifactorNReset:Z

.field private static mIsFromKnoxFinger:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/ChooseLockPattern;->mAppLockBackupKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mForAppLockBackupKey:Z

    return v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mForFingerprint:Z

    return v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mForIris:Z

    return v0
.end method

.method static synthetic -get4()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mForPrivateModeBackupKey:Z

    return v0
.end method

.method static synthetic -get5()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mFromAppLock:Z

    return v0
.end method

.method static synthetic -get6()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mFromPersonalPage:Z

    return v0
.end method

.method static synthetic -get7()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mIsEnforcedMultifactorNReset:Z

    return v0
.end method

.method static synthetic -get8()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mIsFromKnoxFinger:Z

    return v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/ChooseLockPattern;->mIsEnforcedMultifactorNReset:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/ChooseLockPattern;Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockPattern;->allowHomeAndBack(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/ChooseLockPattern;I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockPattern;->sendIntentToKnoxKeyguard(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mForFingerprint:Z

    .line 104
    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mForIris:Z

    .line 105
    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mIsFromKnoxFinger:Z

    .line 106
    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mFromPersonalPage:Z

    .line 107
    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mFromAppLock:Z

    .line 108
    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mForPrivateModeBackupKey:Z

    .line 109
    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mForAppLockBackupKey:Z

    .line 110
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/ChooseLockPattern;->mAppLockBackupKey:Ljava/lang/String;

    .line 111
    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mIsEnforcedMultifactorNReset:Z

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method

.method private allowHomeAndBack(Z)V
    .locals 5
    .param p1, "allow"    # Z

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 164
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 166
    .local v1, "mWindowManager":Landroid/view/IWindowManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0xbb

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x3e9

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v1    # "mWindowManager":Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    return-void

    .line 170
    .restart local v1    # "mWindowManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static createIntent(Landroid/content/Context;ZJLjava/lang/String;I)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requirePassword"    # Z
    .param p2, "challenge"    # J
    .param p4, "pattern"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .prologue
    .line 149
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p5}, Lcom/android/settings/ChooseLockPattern;->createIntent(Landroid/content/Context;ZZI)Landroid/content/Intent;

    move-result-object v0

    .line 150
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "has_challenge"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 151
    const-string/jumbo v1, "challenge"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 152
    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requirePassword"    # Z
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 133
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p3}, Lcom/android/settings/ChooseLockPattern;->createIntent(Landroid/content/Context;ZZI)Landroid/content/Intent;

    move-result-object v0

    .line 134
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;ZZI)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requirePassword"    # Z
    .param p2, "confirmCredentials"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/ChooseLockPattern;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "key_lock_method"

    const-string/jumbo v2, "pattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string/jumbo v1, "confirm_credentials"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    const-string/jumbo v1, "extra_require_password"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    return-object v0
.end method

.method private sendIntentToKnoxKeyguard(I)V
    .locals 5
    .param p1, "resultCode"    # I

    .prologue
    .line 240
    const-string/jumbo v1, "ChooseLockPattern"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendIntentToKnoxKeyguard : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "knoxIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "knoxIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.knox.securefolder.keyguard.PASSWORD_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, "knoxIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.knox.securefolder"

    const-string/jumbo v3, "com.samsung.knox.securefolder.keyguard.KnoxKeyguardReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 249
    :goto_0
    const-string/jumbo v1, "resetResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 251
    sget-boolean v1, Lcom/android/settings/ChooseLockPattern;->mIsEnforcedMultifactorNReset:Z

    if-eqz v1, :cond_0

    .line 252
    const-string/jumbo v1, "first_lock_type"

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "first_lock_type"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    :cond_0
    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ChooseLockPattern;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 239
    return-void

    .line 246
    .local v0, "knoxIntent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "knoxIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.knox.kss.PASSWORD_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v0, "knoxIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.knox.kss"

    const-string/jumbo v3, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    const-class v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 116
    .local v0, "modIntent":Landroid/content/Intent;
    const-string/jumbo v1, ":settings:show_fragment"

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getFragmentClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string/jumbo v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 158
    const-class v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 159
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x64

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 182
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "from_personal"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mFromPersonalPage:Z

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "from_applock"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mFromAppLock:Z

    .line 185
    const-string/jumbo v3, "ChooseLockPattern"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mFromAppLock : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/settings/ChooseLockPattern;->mFromAppLock:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "for_fingerprint"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mForFingerprint:Z

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "for_iris"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mForIris:Z

    .line 189
    const-string/jumbo v3, "ChooseLockPattern"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[mForFingerprint] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/settings/ChooseLockPattern;->mForFingerprint:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "forPrivateBackupKey"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mForPrivateModeBackupKey:Z

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "forAppLockBackupKey"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/ChooseLockPattern;->mAppLockBackupKey:Ljava/lang/String;

    .line 192
    sget-object v3, Lcom/android/settings/ChooseLockPattern;->mAppLockBackupKey:Ljava/lang/String;

    if-eqz v3, :cond_3

    move v3, v4

    :goto_0
    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mForAppLockBackupKey:Z

    .line 193
    const-string/jumbo v3, "ChooseLockPattern"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[mForPrivateModeBackupKey] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/settings/ChooseLockPattern;->mForPrivateModeBackupKey:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "isFromKnoxFinger"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mIsFromKnoxFinger:Z

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "fromKnoxKeyguard"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mIsEnforcedMultifactorNReset:Z

    .line 197
    const-string/jumbo v3, "ChooseLockPattern"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[KNOX FINGER] : init, mIsFromKnoxFinger:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/settings/ChooseLockPattern;->mIsFromKnoxFinger:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-lt v3, v8, :cond_1

    .line 199
    const-string/jumbo v3, "persona"

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockPattern;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    .line 200
    .local v2, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    const/4 v1, 0x0

    .line 201
    .local v1, "pi":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz v2, :cond_0

    .line 202
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v1

    .line 204
    .end local v1    # "pi":Lcom/samsung/android/knox/SemPersonaInfo;
    :cond_0
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 205
    iget v3, v1, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getStateManager(I)Lcom/samsung/android/knox/SemPersonaManager$StateManager;

    move-result-object v3

    sget-object v6, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    invoke-virtual {v3, v6}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->isAttribute(Landroid/content/pm/PersonaAttribute;)Z

    move-result v3

    .line 204
    if-eqz v3, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 211
    .end local v2    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_1
    const-string/jumbo v0, ""

    .line 212
    .local v0, "msg":Ljava/lang/CharSequence;
    sget-boolean v3, Lcom/android/settings/ChooseLockPattern;->mFromPersonalPage:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/settings/ChooseLockPattern;->mForPrivateModeBackupKey:Z

    if-eqz v3, :cond_4

    .line 213
    :cond_2
    const v3, 0x7f0b09f4

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockPattern;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 221
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->setTitle(Ljava/lang/CharSequence;)V

    .line 180
    return-void

    .end local v0    # "msg":Ljava/lang/CharSequence;
    :cond_3
    move v3, v5

    .line 192
    goto/16 :goto_0

    .line 215
    .restart local v0    # "msg":Ljava/lang/CharSequence;
    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-lt v3, v8, :cond_5

    sget-boolean v3, Lcom/android/settings/ChooseLockPattern;->mForFingerprint:Z

    if-eqz v3, :cond_6

    .line 219
    :cond_5
    const v3, 0x7f0b14a8

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockPattern;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 216
    :cond_6
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b07af

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/ChooseLockPattern;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 228
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 229
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 230
    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mIsEnforcedMultifactorNReset:Z

    if-nez v0, :cond_1

    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/ChooseLockPattern;->sendIntentToKnoxKeyguard(I)V

    .line 235
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method