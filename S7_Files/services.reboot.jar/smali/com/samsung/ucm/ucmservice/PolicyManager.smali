.class public Lcom/samsung/ucm/ucmservice/PolicyManager;
.super Ljava/lang/Object;
.source "PolicyManager.java"


# static fields
.field private static final ALIASACCESSIBLE:I = 0x1

.field private static final ALIASINACCESSIBLE:I = 0x0

.field private static final ALIASUNKNOWN:I = 0x2

.field public static final BUNDLE_EXTRA_ACCESS_TYPE:Ljava/lang/String; = "access_type"

.field public static final BUNDLE_EXTRA_ALIAS:Ljava/lang/String; = "alias"

.field public static final BUNDLE_EXTRA_ESE_STORAGE_OPTION:Ljava/lang/String; = "ese_storage_option"

.field public static final BUNDLE_EXTRA_USER_ID:Ljava/lang/String; = "userId"

.field private static final TAG:Ljava/lang/String; = "PolicyManager"

.field public static final UCM_ACCESS_TYPE_CERTIFICATE:I = 0x68

.field public static final UCM_ACCESS_TYPE_STORAGE:I = 0x67

.field public static final UCM_AUTH_TYPE_LOCKED:I = 0x64

.field public static final UCM_EXEMPT_TYPE_AUTH:I = 0x6a

.field public static final UCM_STORAGE_OPTION_INSIDE:I = 0x65

.field public static final UCM_STORAGE_OPTION_OUTSIDE:I = 0x66


# instance fields
.field public hiddenPluginPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIPackageManager:Landroid/content/pm/IPackageManager;

.field private mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "com.sec.smartcard.manager"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.ucs.agent.boot"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->hiddenPluginPackages:Ljava/util/ArrayList;

    .line 61
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method private getPackageNameForUid(I)Z
    .locals 7
    .param p1, "uid"    # I

    .prologue
    const/4 v6, 0x0

    .line 542
    const/4 v2, 0x0

    .line 544
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, "packageName":Ljava/lang/String;
    const-string/jumbo v3, "PolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "packageName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 550
    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 551
    .local v1, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 552
    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 554
    :cond_0
    const-string/jumbo v3, "android.uid.systemui"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 555
    const/4 v3, 0x1

    return v3

    .line 546
    .end local v1    # "index":I
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "PolicyManager"

    const-string/jumbo v4, "Exception in getPackageNameForUid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 558
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return v6
.end method

.method private declared-synchronized getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    .locals 1

    .prologue
    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    if-nez v0, :cond_0

    .line 66
    const-string/jumbo v0, "knox_ucsm_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isAuthEnabled(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z
    .locals 5
    .param p1, "userid"    # I
    .param p2, "cs"    # Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .param p3, "calleruid"    # I

    .prologue
    .line 358
    const-string/jumbo v2, "PolicyManager"

    const-string/jumbo v3, "isAuthEnabled() called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getStorageAuthenticationType(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result v0

    .line 360
    .local v0, "authType":I
    const/4 v1, 0x0

    .line 361
    .local v1, "status":Z
    const-string/jumbo v2, "PolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAuthEnabled authType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/16 v2, 0x64

    if-ne v2, v0, :cond_0

    .line 364
    invoke-virtual {p0, p3, p2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isPackageFromExemptList(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 365
    const-string/jumbo v2, "PolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAuthEnabled calleruid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not auth exempt package"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isAuthTypeLockforUser(I)Z

    move-result v1

    .line 371
    .end local v1    # "status":Z
    :cond_0
    :goto_0
    const-string/jumbo v2, "PolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAuthEnabled() status - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return v1

    .line 368
    .restart local v1    # "status":Z
    :cond_1
    const-string/jumbo v2, "PolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAuthEnabled calleruid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is auth exempt package"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isAuthTypeLockforUser(I)Z
    .locals 8
    .param p1, "userid"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 376
    const-string/jumbo v3, "PolicyManager"

    const-string/jumbo v4, "isAuthTypeLockforUser() called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    if-nez p1, :cond_2

    .line 379
    const-string/jumbo v3, "PolicyManager"

    const-string/jumbo v4, "isAuthTypeLockforUser() userid == UserHandle.USER_OWNER"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 381
    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-nez v0, :cond_0

    .line 382
    const-string/jumbo v3, "PolicyManager"

    const-string/jumbo v4, "isAuthTypeLockforUser() KeyguardManager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return v6

    .line 385
    :cond_0
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 386
    const-string/jumbo v3, "PolicyManager"

    const-string/jumbo v4, "isAuthTypeLockforUser() Keyguard is locked."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return v7

    .line 389
    :cond_1
    return v6

    .line 391
    .end local v0    # "kgm":Landroid/app/KeyguardManager;
    :cond_2
    const-string/jumbo v3, "PolicyManager"

    const-string/jumbo v4, "isAuthTypeLockforUser() userid can be KNOX"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "persona"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    .line 393
    .local v1, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-nez v1, :cond_3

    .line 394
    const-string/jumbo v3, "PolicyManager"

    const-string/jumbo v4, "isAuthTypeLockforUser() SemPersonaManager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return v6

    .line 399
    :cond_3
    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 400
    const-string/jumbo v3, "PolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAuthTypeLockforUser():  userid is not KNOX container: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return v6

    .line 403
    :cond_4
    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getStateManager(I)Lcom/samsung/android/knox/SemPersonaManager$StateManager;

    move-result-object v2

    .line 404
    .local v2, "sm":Lcom/samsung/android/knox/SemPersonaManager$StateManager;
    const-string/jumbo v3, "PolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAuthTypeLockforUser():  Knox state is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->getState()Lcom/samsung/android/knox/SemPersonaState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->inState(Lcom/samsung/android/knox/SemPersonaState;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 406
    return v7

    .line 408
    :cond_5
    return v6
.end method

.method private static isValidUser(I)Z
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 436
    const-string/jumbo v1, "PolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isValidUser userId-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v0, 0x0

    .line 439
    .local v0, "status":Z
    if-eqz p0, :cond_0

    const/16 v1, 0x64

    if-lt p0, v1, :cond_1

    .line 440
    :cond_0
    const/4 v0, 0x1

    .line 445
    :cond_1
    const-string/jumbo v1, "PolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isValidUser status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    return v0
.end method


# virtual methods
.method public addGrantKeychainAccess(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "grant"    # Z

    .prologue
    .line 618
    return-void
.end method

.method public clearKeychainAccess(I)V
    .locals 0
    .param p1, "user"    # I

    .prologue
    .line 626
    return-void
.end method

.method public containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 245
    .local p2, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 246
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "string$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 247
    .local v0, "string":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    const/4 v2, 0x1

    return v2

    .line 252
    .end local v0    # "string":Ljava/lang/String;
    .end local v1    # "string$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public delGrantKeychainAccess(Ljava/lang/String;I)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 622
    return-void
.end method

.method protected final getCertificateAliases(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Ljava/util/List;
    .locals 8
    .param p1, "uid"    # I
    .param p2, "cs"    # Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 567
    const-string/jumbo v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PolicyManager.getCertificateAliases() for uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    .line 570
    .local v3, "ucmService":Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v3, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCertificateAliases(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object v1

    .line 571
    .local v1, "aliasesStrArr":[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 572
    return-object v7

    .line 574
    :cond_0
    const-string/jumbo v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PolicyManager.getCertificateAliases():  size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 576
    .local v0, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v0

    .line 577
    .end local v0    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "aliasesStrArr":[Ljava/lang/String;
    .end local v3    # "ucmService":Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    :catch_0
    move-exception v2

    .line 578
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error in getCertificateAliases: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 581
    return-object v7
.end method

.method protected getStorageAuthenticationType(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 5
    .param p1, "userId"    # I
    .param p2, "cs"    # Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 137
    const-string/jumbo v2, "PolicyManager"

    const-string/jumbo v3, "PolicyManager.getStorageAuthenticationType() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    .line 140
    .local v1, "ucmService":Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getStorageAuthenticationType(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 141
    .end local v1    # "ucmService":Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "PolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error in getStorageAuthenticationType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    const/4 v2, -0x1

    return v2
.end method

.method protected getWifiCertificateAliasesAsUser(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;
    .locals 7
    .param p1, "userId"    # I
    .param p2, "csAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    const/4 v6, 0x0

    .line 154
    const-string/jumbo v3, "PolicyManager"

    const-string/jumbo v4, "PolicyManager.getWifiCertificateAliasesAsUser() "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v0}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 157
    .local v0, "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    iget-object v3, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v3, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 159
    const-string/jumbo v3, "PolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PolicyManager.getWifiCertificateAliasesAsUser() for userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v3, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 161
    iget-object v3, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v2

    .line 164
    .local v2, "ucmService":Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v2, p1, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getWifiCertificateAliasesAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 165
    .end local v0    # "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .end local v2    # "ucmService":Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "PolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error in getWifiCertificateAliasesAsUser: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    return-object v6
.end method

.method public getallAliasesforCS(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;
    .locals 8
    .param p1, "csAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    const/4 v7, 0x0

    .line 338
    new-instance v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v1}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 339
    .local v1, "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    iget-object v4, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v4, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 341
    const-string/jumbo v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PolicyManager.getallAliasesforCS() for csname="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v4, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 343
    iget-object v4, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 346
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    .line 347
    .local v3, "ucmService":Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v3, v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getAllCertificateAliases(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 348
    .local v0, "aliasArray":[Ljava/lang/String;
    return-object v0

    .line 349
    .end local v0    # "aliasArray":[Ljava/lang/String;
    .end local v3    # "ucmService":Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    :catch_0
    move-exception v2

    .line 350
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error in getallAliasesforCS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 353
    return-object v7
.end method

.method public getallAliasesforUid(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;
    .locals 8
    .param p1, "uid"    # I
    .param p2, "csAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    const/4 v7, 0x0

    .line 287
    new-instance v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v1}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 288
    .local v1, "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    iget-object v4, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v4, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 290
    const-string/jumbo v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PolicyManager.getallAliasesforUid() for uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v4, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 292
    iget-object v4, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 295
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    .line 296
    .local v3, "ucmService":Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v3, p1, v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCertificateAliases(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 297
    .local v0, "aliasArray":[Ljava/lang/String;
    return-object v0

    .line 298
    .end local v0    # "aliasArray":[Ljava/lang/String;
    .end local v3    # "ucmService":Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    :catch_0
    move-exception v2

    .line 299
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error in getallAliasesforUid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 302
    return-object v7
.end method

.method public getallAliasesforUserId(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;
    .locals 8
    .param p1, "userid"    # I
    .param p2, "csAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    const/4 v7, 0x0

    .line 313
    new-instance v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v1}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 314
    .local v1, "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    iget-object v4, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v4, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 316
    const-string/jumbo v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PolicyManager.getallAliasesforUserId() for userid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v4, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 318
    iget-object v4, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 321
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    .line 322
    .local v3, "ucmService":Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v3, p1, v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCertificateAliasesAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 323
    .local v0, "aliasArray":[Ljava/lang/String;
    return-object v0

    .line 324
    .end local v0    # "aliasArray":[Ljava/lang/String;
    .end local v3    # "ucmService":Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    :catch_0
    move-exception v2

    .line 325
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error in getallAliasesforUserId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 328
    return-object v7
.end method

.method public isAccessAllowedforUid(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .locals 7
    .param p1, "uid"    # I
    .param p2, "userId"    # I
    .param p3, "cs"    # Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 198
    const-string/jumbo v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PolicyManager.isAccessAllowedforUid() for uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 201
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "access_type"

    const/16 v5, 0x67

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    const-string/jumbo v4, "userId"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    .line 205
    .local v3, "ucmService":Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v3, p1, p3, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isAccessAllowed(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Z

    move-result v2

    .line 206
    .local v2, "result":Z
    const-string/jumbo v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PolicyManager.isAccessAllowedforUid():  result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    return v2

    .line 208
    .end local v2    # "result":Z
    .end local v3    # "ucmService":Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error in isAccessAllowedforUid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 212
    const/4 v4, 0x0

    return v4
.end method

.method public isAliasAllowedforUid(IILjava/lang/String;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .locals 7
    .param p1, "uid"    # I
    .param p2, "userId"    # I
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "cs"    # Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 225
    const-string/jumbo v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PolicyManager.isAliasAllowedforUid() for uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 228
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "access_type"

    const/16 v5, 0x68

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 229
    const-string/jumbo v4, "alias"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string/jumbo v4, "userId"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    .line 233
    .local v3, "ucmService":Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v3, p1, p4, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isAccessAllowed(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Z

    move-result v2

    .line 234
    .local v2, "result":Z
    const-string/jumbo v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PolicyManager.isAliasAllowedforUid():  result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    return v2

    .line 236
    .end local v2    # "result":Z
    .end local v3    # "ucmService":Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error in isAliasAllowedforUid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 240
    const/4 v4, 0x0

    return v4
.end method

.method public isAliasknown(ILjava/lang/String;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .locals 8
    .param p1, "uid"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "cs"    # Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .prologue
    const/4 v7, 0x0

    .line 264
    const-string/jumbo v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PolicyManager.isAliasknown() for uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    .line 268
    .local v3, "ucmService":Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v3, p1, p3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCertificateAliases(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "aliasArray":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 270
    return v7

    .line 271
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, p2, v4}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 272
    .local v2, "result":Z
    return v2

    .line 273
    .end local v0    # "aliasArray":[Ljava/lang/String;
    .end local v2    # "result":Z
    .end local v3    # "ucmService":Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error in isAliasknown: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 277
    return v7
.end method

.method public isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z
    .locals 5
    .param p1, "csAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    const/4 v4, 0x0

    .line 413
    if-nez p1, :cond_0

    .line 414
    const-string/jumbo v1, "PolicyManager"

    const-string/jumbo v2, "csAgent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return v4

    .line 418
    :cond_0
    iget-object v1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 419
    iget-object v1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "cspkgname":Ljava/lang/String;
    const-string/jumbo v1, "PolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SE visibility being checked for cs Name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Package name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .end local v0    # "cspkgname":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_2

    .line 426
    const-string/jumbo v1, "PolicyManager"

    const-string/jumbo v2, "cspkgname = NULL. Unknown CS. CS Not Obscure"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return v4

    .line 422
    :cond_1
    const/4 v0, 0x0

    .local v0, "cspkgname":Ljava/lang/String;
    goto :goto_0

    .line 429
    .end local v0    # "cspkgname":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->hiddenPluginPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 430
    const/4 v1, 0x1

    return v1

    .line 432
    :cond_3
    return v4
.end method

.method protected final isCredentialStorageEnabledForLockType(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "cs"    # Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 97
    const-string/jumbo v3, "PolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PolicyManager.isCredentialStorageEnabledForLockType() for userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v1, 0x0

    .line 100
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v2

    .line 101
    .local v2, "ucmService":Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageEnabledForLockTypeAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v1

    .line 102
    .local v1, "result":Z
    const-string/jumbo v3, "PolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PolicyManager.isCredentialStorageEnabledForLockType() result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v1    # "result":Z
    .end local v2    # "ucmService":Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_0
    return v1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "PolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error in isCredentialStorageEnabledForLockType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isKeychainAccessGranted(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 615
    const/4 v0, 0x1

    return v0
.end method

.method protected isPackageFromExemptList(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "cs"    # Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 178
    const-string/jumbo v2, "PolicyManager"

    const-string/jumbo v3, "PolicyManager.isPackageFromExemptList() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    .line 181
    .local v1, "ucmService":Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    const/16 v2, 0x6a

    invoke-interface {v1, p1, p2, v2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isPackageFromExemptList(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 182
    .end local v1    # "ucmService":Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "PolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error in isPackageFromExemptList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    const/4 v2, 0x0

    return v2
.end method

.method public isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I
    .locals 9
    .param p1, "csAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .param p2, "userid"    # I
    .param p3, "uid"    # I
    .param p4, "isRequestByMdmOrKnox"    # Z
    .param p5, "aliasName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 450
    if-eqz p1, :cond_0

    .line 451
    const-string/jumbo v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "--isSEStorageAccessAllowed()-- for Source="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v6, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; UserId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    move v1, p3

    .line 459
    .local v1, "calleruid":I
    new-instance v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v2}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 460
    .local v2, "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    iget-object v4, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v4, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 461
    iget-object v4, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 462
    iget-object v4, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 463
    const-string/jumbo v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SE access being checked for cs Name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Package name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 471
    return v8

    .line 453
    .end local v1    # "calleruid":I
    .end local v2    # "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    :cond_0
    const-string/jumbo v4, "PolicyManager"

    const-string/jumbo v5, "csAgent is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return v7

    .line 465
    .restart local v1    # "calleruid":I
    .restart local v2    # "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    :cond_1
    const-string/jumbo v4, "PolicyManager"

    const-string/jumbo v5, "Package name for CS found NULL. Denying CS access."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return v7

    .line 474
    :cond_2
    if-eqz p4, :cond_3

    .line 475
    const-string/jumbo v4, "PolicyManager"

    const-string/jumbo v5, "MDM or KNOX licensed caller. Skipping additional validation"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return v8

    .line 478
    :cond_3
    const-string/jumbo v4, "PolicyManager"

    const-string/jumbo v5, "Not a MDM or KNOX licensed caller. Performing additional validation checks"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {p0, p2, v2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isStorageEnabled(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 482
    iget-object v4, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v3, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enforceManagement:Z

    .line 484
    .local v3, "enforceManagement":Z
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 485
    .local v0, "callerUserId":I
    if-nez v3, :cond_4

    const/16 v4, 0x64

    if-lt v0, v4, :cond_5

    .line 486
    :cond_4
    const-string/jumbo v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WARNING!!!! Storage is not allowed for userid= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " and uid-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return v7

    .line 485
    :cond_5
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isValidUser(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 489
    const-string/jumbo v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Storage is allowed for userid= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " and  uid-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return v8

    .line 495
    .end local v0    # "callerUserId":I
    .end local v3    # "enforceManagement":Z
    :cond_6
    invoke-virtual {p0, p2, v2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isStorageLocked(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 496
    const-string/jumbo v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WARNING!!!! Storage access is temporary NOT allowed from MDM for mUserId= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return v7

    .line 502
    :cond_7
    invoke-direct {p0, p2, v2, p3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isAuthEnabled(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 503
    const-string/jumbo v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Storage access is locked currently for userid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    return v7

    .line 508
    :cond_8
    const/16 v4, 0x3f2

    if-eq p3, v4, :cond_9

    const/16 v4, 0x3e8

    if-ne p3, v4, :cond_a

    .line 509
    :cond_9
    const-string/jumbo v4, "PolicyManager"

    const-string/jumbo v5, "Calling Id is either WIFI or System; skip additional validation"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return v8

    .line 514
    :cond_a
    invoke-direct {p0, p3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getPackageNameForUid(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 515
    const-string/jumbo v4, "PolicyManager"

    const-string/jumbo v5, "Calling Id is SystemUI application"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return v8

    .line 520
    :cond_b
    invoke-virtual {p0, p3, p2, v2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isAccessAllowedforUid(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 521
    const-string/jumbo v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WARNING!!!!  isAccessAllowedforUid() returned false: SE access is NOT allowed for calleruid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return v7

    .line 524
    :cond_c
    if-eqz p5, :cond_e

    .line 526
    invoke-virtual {p0, p3, p5, v2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isAliasknown(ILjava/lang/String;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 527
    const-string/jumbo v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WARNING!!!!  isAliasknown() returned false: ALIAS not known to MDM for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return v8

    .line 530
    :cond_d
    invoke-virtual {p0, p3, p2, p5, v2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isAliasAllowedforUid(IILjava/lang/String;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 531
    const-string/jumbo v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WARNING!!!!  isAliasAllowedforUid() returned false: ALIAS access is NOT allowed for calleruid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return v7

    .line 536
    :cond_e
    const-string/jumbo v4, "PolicyManager"

    const-string/jumbo v5, "isSEStorageAccessAllowed() VALIDATED....."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return v8
.end method

.method protected final isStorageEnabled(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "cs"    # Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 78
    const-string/jumbo v3, "PolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PolicyManager.isStorageEnabled() for userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v1, 0x0

    .line 81
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v2

    .line 82
    .local v2, "ucmService":Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageManagedAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v1

    .line 83
    .local v1, "result":Z
    const-string/jumbo v3, "PolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PolicyManager.isStorageEnabled() result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v1    # "result":Z
    .end local v2    # "ucmService":Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_0
    return v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "PolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error in isStorageEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected final isStorageLocked(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "cs"    # Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 116
    const-string/jumbo v3, "PolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PolicyManager.isStorageLocked() for userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v1, 0x0

    .line 119
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v2

    .line 120
    .local v2, "ucmService":Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageLockedAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v1

    .line 121
    .local v1, "result":Z
    const-string/jumbo v3, "PolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PolicyManager.isStorageLocked() result result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v1    # "result":Z
    .end local v2    # "ucmService":Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_0
    return v1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "PolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error in isStorageLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method