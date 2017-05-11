.class public Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
.super Ljava/lang/Object;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MumXmlDataParser"
.end annotation


# static fields
.field private static final APPLICATION:Ljava/lang/String; = "application"

.field private static final APPLICATIONONLY:Ljava/lang/String; = "applicationonly"

.field private static final ATTR_ALLOW:Ljava/lang/String; = "allow"

.field private static final ATTR_DISALLOW:Ljava/lang/String; = "disallow"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_REENABLE:Ljava/lang/String; = "reenable"

.field private static final ATTR_REMOVE:Ljava/lang/String; = "remove"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final BADGEPOLICY:Ljava/lang/String; = "BadgePolicy"

.field private static final CLONE_APPLICATION:Ljava/lang/String; = "cloneapplication"

.field private static final CLONE_DISABLE_PKG:Ljava/lang/String; = "clonedisablePkg"

.field private static final COLUMN:Ljava/lang/String; = "column"

.field private static final DISABLE_PKG:Ljava/lang/String; = "disablePkg"

.field private static final DISALLOW:Ljava/lang/String; = "disallow"

.field private static final FORBIDDEN_STRING:Ljava/lang/String; = "forbiddenString"

.field private static final FOTA_DISABLE_PKG:Ljava/lang/String; = "fotadisablePkg"

.field private static final GROUPPKG:Ljava/lang/String; = "groupPkg"

.field private static final GROUPPREFIX:Ljava/lang/String; = "group_"

.field private static final KNOXCORE:Ljava/lang/String; = "knoxCore"

.field private static final PACKAGE:Ljava/lang/String; = "package"

.field private static final PERSONA:Ljava/lang/String; = "persona"

.field private static final POLICY:Ljava/lang/String; = "policy"

.field private static final PROPERTY:Ljava/lang/String; = "property"

.field private static final PROTECTED_PKG:Ljava/lang/String; = "protectedPkg"

.field private static final PROVIDER_TAG:Ljava/lang/String; = "provider"

.field private static final REPLACE:Ljava/lang/String; = "replace"

.field private static final ROW:Ljava/lang/String; = "row"

.field private static final TABLE:Ljava/lang/String; = "table"

.field private static final TAG:Ljava/lang/String; = "MumXmlDataParser"


# instance fields
.field private final DEBUG:Z

.field private browserInstalled:Z

.field fotaCloneAppDisableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fotaCloneAppInstallList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fotaCloneAppReenableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fotaCloneAppRemoveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isAlreadyChecked:Z

.field private final mParser:Lorg/xmlpull/v1/XmlPullParser;

.field private mTypeListLocal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 6280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6236
    iput-boolean v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->DEBUG:Z

    .line 6272
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    .line 6273
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    .line 6274
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    .line 6275
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppReenableList:Ljava/util/List;

    .line 6278
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    .line 7132
    iput-boolean v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->isAlreadyChecked:Z

    .line 7133
    iput-boolean v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->browserInstalled:Z

    .line 6281
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 6282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    .line 6280
    return-void
.end method

.method private containsProductName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "productName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 6318
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 6319
    :cond_0
    return v3

    .line 6321
    :cond_1
    const-string/jumbo v2, " "

    const-string/jumbo v4, ""

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 6322
    .local v1, "target":[Ljava/lang/String;
    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v0, v1, v2

    .line 6323
    .local v0, "oper":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6324
    const/4 v2, 0x1

    return v2

    .line 6322
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6327
    .end local v0    # "oper":Ljava/lang/String;
    :cond_3
    return v3
.end method

.method private getCalendarPackageName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 7088
    const-string/jumbo v1, "com.android.calendar"

    .line 7089
    .local v1, "originalPackageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    .line 7090
    const-string/jumbo v4, "SEC_FLOATING_FEATURE_CALENDAR_CONFIG_PACKAGE_NAME"

    const-string/jumbo v5, "com.android.calendar"

    .line 7089
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7091
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7093
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get5()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7100
    :cond_0
    :goto_0
    return-object v2

    .line 7095
    :catch_0
    move-exception v0

    .line 7097
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v2, v1

    goto :goto_0
.end method

.method private getContactsPackageName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 7105
    const-string/jumbo v1, "com.android.contacts"

    .line 7106
    .local v1, "originalPackageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    .line 7107
    const-string/jumbo v5, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    const-string/jumbo v6, "com.android.contacts"

    .line 7106
    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7108
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7110
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    .line 7111
    const-string/jumbo v5, "CscFeature_Contact_ReplacePackageAs"

    .line 7110
    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7112
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 7114
    return-object v3

    .line 7117
    :cond_0
    return-object v1

    .line 7121
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get5()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 7122
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7128
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 7124
    :catch_0
    move-exception v0

    .line 7126
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v3, v1

    goto :goto_0
.end method

.method private isBrowserInstalled()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 7136
    iget-boolean v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->isAlreadyChecked:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->browserInstalled:Z

    return v4

    .line 7137
    :cond_0
    const-string/jumbo v4, "package"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageManagerService;

    .line 7138
    .local v3, "pms":Lcom/android/server/pm/PackageManagerService;
    invoke-virtual {v3, v5, v5}, Lcom/android/server/pm/PackageManagerService;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    .line 7140
    .local v2, "pInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pInfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 7141
    .local v0, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "com.sec.android.app.sbrowser"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "com.android.browser"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7142
    :cond_2
    iput-boolean v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->browserInstalled:Z

    .line 7147
    .end local v0    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_3
    iput-boolean v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->isAlreadyChecked:Z

    .line 7148
    iget-boolean v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->browserInstalled:Z

    return v4
.end method

.method private isLwcContainerType(Lcom/samsung/android/knox/container/KnoxConfigurationType;)Z
    .locals 1
    .param p1, "configType"    # Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .prologue
    .line 7084
    instance-of v0, p1, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    return v0
.end method


# virtual methods
.method public getFotaCloneDisableApps()Ljava/util/List;
    .locals 1
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
    .line 6288
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    return-object v0
.end method

.method public getFotaCloneInstallApps()Ljava/util/List;
    .locals 1
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
    .line 6294
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    return-object v0
.end method

.method public getFotaCloneReenableApps()Ljava/util/List;
    .locals 1
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
    .line 6306
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppReenableList:Ljava/util/List;

    return-object v0
.end method

.method public getFotaCloneRemoveApps()Ljava/util/List;
    .locals 1
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
    .line 6300
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    return-object v0
.end method

.method public getTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6310
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    return-object v0
.end method

.method public isDefaultLWCModel()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 6331
    const/4 v2, 0x0

    .line 6333
    .local v2, "result":Z
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v3

    .line 6334
    .local v3, "version":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ltz v4, :cond_0

    const/4 v1, 0x1

    .line 6335
    .local v1, "isKnoxVersionPostZero":Z
    :cond_0
    if-eqz v1, :cond_1

    .line 6336
    const/4 v2, 0x1

    .line 6341
    .end local v1    # "isKnoxVersionPostZero":Z
    .end local v3    # "version":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :cond_1
    :goto_0
    return v2

    .line 6339
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public mergeKnoxConfigurationTypes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7289
    .local p1, "origTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/container/KnoxConfigurationType;>;"
    .local p2, "customTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/container/KnoxConfigurationType;>;"
    const/4 v3, 0x0

    .line 7290
    .local v3, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 7292
    .local v2, "customName":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 7293
    :cond_0
    const-string/jumbo v6, "MumXmlDataParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mergeKnoxConfigurationTypes: customTypeList == null or empty: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7294
    return-object p1

    .line 7297
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v2    # "customName":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .local v5, "row$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 7298
    .local v4, "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "custRow$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 7299
    .local v0, "custRow":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    invoke-virtual {v4}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v3

    .line 7300
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v2

    .line 7301
    .local v2, "customName":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 7304
    invoke-virtual {v4}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 7305
    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 7306
    invoke-virtual {v4}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7309
    :cond_4
    invoke-virtual {v4}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 7310
    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 7311
    invoke-virtual {v4}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7314
    :cond_5
    invoke-virtual {v4}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 7315
    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 7316
    invoke-virtual {v4}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 7320
    .end local v0    # "custRow":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .end local v1    # "custRow$iterator":Ljava/util/Iterator;
    .end local v2    # "customName":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    :cond_6
    return-object p1
.end method

.method public readFromCustomXml()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7152
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 7155
    .local v11, "rowsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/container/KnoxConfigurationType;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 7156
    .local v4, "event":I
    const/4 v10, 0x0

    .line 7157
    .local v10, "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    const/4 v13, 0x0

    .local v13, "value":Ljava/lang/String;
    const/4 v6, 0x0

    .line 7158
    .local v6, "nameAttribute":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 7160
    .local v7, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v14, "ro.product.name"

    const-string/jumbo v15, "NONE"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 7161
    .end local v1    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "nameAttribute":Ljava/lang/String;
    .end local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .end local v13    # "value":Ljava/lang/String;
    .local v8, "productName":Ljava/lang/String;
    :goto_0
    const/4 v14, 0x1

    if-eq v4, v14, :cond_2

    .line 7162
    packed-switch v4, :pswitch_data_0

    .line 7279
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    .line 7164
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 7165
    .local v12, "tag":Ljava/lang/String;
    const-string/jumbo v14, "row"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 7168
    new-instance v10, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    invoke-direct {v10}, Lcom/samsung/android/knox/container/KnoxConfigurationType;-><init>()V

    .local v10, "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    goto :goto_1

    .line 7170
    .end local v10    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    :cond_1
    const-string/jumbo v14, "column"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 7171
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v15, "value"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v14, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 7172
    .local v13, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v15, "name"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v14, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7175
    .local v6, "nameAttribute":Ljava/lang/String;
    const-string/jumbo v14, "Name"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    if-eqz v10, :cond_3

    .line 7177
    invoke-virtual {v10, v13}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 7281
    .end local v4    # "event":I
    .end local v6    # "nameAttribute":Ljava/lang/String;
    .end local v8    # "productName":Ljava/lang/String;
    .end local v12    # "tag":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 7282
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "MumXmlDataParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "readFromCustomXml EX:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7285
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v11

    .line 7179
    .restart local v4    # "event":I
    .restart local v6    # "nameAttribute":Ljava/lang/String;
    .restart local v8    # "productName":Ljava/lang/String;
    .restart local v12    # "tag":Ljava/lang/String;
    .restart local v13    # "value":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string/jumbo v14, "AppInstallList"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 7181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 7183
    .end local v1    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const-string/jumbo v14, "ProtectedPkgList"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 7185
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 7187
    .end local v9    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const-string/jumbo v14, "GoogleAppsPkgList"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 7189
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 7193
    .end local v5    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "nameAttribute":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :cond_6
    const-string/jumbo v14, "application"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 7194
    if-eqz v1, :cond_0

    .line 7195
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v15, "name"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v14, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 7199
    .restart local v13    # "value":Ljava/lang/String;
    const-string/jumbo v14, "DCM"

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->readOMCSalesCode()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    const-string/jumbo v14, "com.android.contacts"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 7200
    const-string/jumbo v13, "com.samsung.contacts"

    .line 7202
    :cond_7
    if-eqz v13, :cond_0

    .line 7203
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 7206
    .end local v13    # "value":Ljava/lang/String;
    :cond_8
    const-string/jumbo v14, "protectedPkg"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 7208
    if-eqz v9, :cond_0

    .line 7209
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v15, "name"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v14, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 7212
    .restart local v13    # "value":Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 7213
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 7216
    .end local v13    # "value":Ljava/lang/String;
    :cond_9
    const-string/jumbo v14, "disablePkg"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 7218
    if-eqz v5, :cond_0

    .line 7219
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v15, "name"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v14, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 7222
    .restart local v13    # "value":Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 7223
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 7226
    .end local v13    # "value":Ljava/lang/String;
    :cond_a
    const-string/jumbo v14, "knoxCore"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 7228
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 7230
    .end local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    const-string/jumbo v14, "package"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 7232
    if-eqz v7, :cond_0

    .line 7233
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v15, "name"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v14, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 7236
    .restart local v13    # "value":Ljava/lang/String;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 7237
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v15, "allow"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v14, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7238
    .local v2, "content":Ljava/lang/String;
    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 7239
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v15, "disallow"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v14, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7240
    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 7241
    :cond_d
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 7250
    .end local v2    # "content":Ljava/lang/String;
    .end local v12    # "tag":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 7251
    .restart local v12    # "tag":Ljava/lang/String;
    const-string/jumbo v14, "row"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14

    if-eqz v10, :cond_14

    .line 7253
    if-eqz v1, :cond_e

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 7256
    :cond_e
    :goto_2
    if-eqz v9, :cond_f

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_12

    .line 7259
    :cond_f
    :goto_3
    if-eqz v5, :cond_10

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_13

    .line 7262
    :cond_10
    :goto_4
    invoke-virtual {v10}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->dumpState()V

    .line 7263
    const/4 v1, 0x0

    .line 7264
    .local v1, "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 7265
    .local v9, "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 7266
    .local v5, "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 7254
    .end local v1    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    invoke-virtual {v10, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setAppInstallationList(Ljava/util/List;)V

    goto :goto_2

    .line 7257
    :cond_12
    invoke-virtual {v10, v9}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setProtectedPackageList(Ljava/util/List;)V

    goto :goto_3

    .line 7260
    :cond_13
    invoke-virtual {v10, v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setGoogleAppsList(Ljava/util/List;)V

    goto :goto_4

    .line 7268
    :cond_14
    const-string/jumbo v14, "knoxCore"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 7270
    if-eqz v7, :cond_15

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_16

    .line 7273
    :cond_15
    :goto_5
    const/4 v7, 0x0

    .local v7, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 7271
    .end local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_16
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get6()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 7162
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public readFromXml()V
    .locals 45

    .prologue
    .line 6347
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    .line 6348
    .local v12, "event":I
    const/16 v34, 0x0

    .line 6349
    .local v34, "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    const/16 v18, 0x0

    .line 6350
    .local v18, "intVal":I
    const/4 v9, 0x0

    .line 6351
    .local v9, "booleanVal":Z
    const/16 v20, 0x0

    .line 6352
    .local v20, "isRCPDataSettings":Z
    const/16 v39, 0x0

    .local v39, "value":Ljava/lang/String;
    const/16 v22, 0x0

    .line 6353
    .local v22, "nameAttribute":Ljava/lang/String;
    const/16 v27, 0x0

    .line 6354
    .local v27, "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    .local v13, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 6355
    .local v7, "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v21, 0x0

    .local v21, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v31, 0x0

    .local v31, "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .local v14, "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 6356
    .local v4, "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 6357
    .local v5, "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v26, 0x0

    .line 6358
    .local v26, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/16 v28, 0x0

    .line 6359
    .local v28, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 6360
    .local v8, "badgePolicylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v40, "ro.product.name"

    const-string/jumbo v41, "NONE"

    invoke-static/range {v40 .. v41}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 6361
    .end local v4    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "badgePolicylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "booleanVal":Z
    .end local v13    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "nameAttribute":Ljava/lang/String;
    .end local v26    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v27    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v28    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .end local v39    # "value":Ljava/lang/String;
    .local v29, "productName":Ljava/lang/String;
    :goto_0
    const/16 v40, 0x1

    move/from16 v0, v40

    if-eq v12, v0, :cond_8

    .line 6362
    packed-switch v12, :pswitch_data_0

    .line 7076
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    goto :goto_0

    .line 6364
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v35

    .line 6365
    .local v35, "tag":Ljava/lang/String;
    const-string/jumbo v40, "row"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 6368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "type"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6369
    .local v39, "value":Ljava/lang/String;
    sget-object v40, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->LIGHTWEIGHT:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_1

    .line 6370
    new-instance v34, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    invoke-direct/range {v34 .. v34}, Lcom/samsung/android/knox/container/LightweightConfigurationType;-><init>()V

    .local v34, "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    goto :goto_1

    .line 6371
    .end local v34    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    :cond_1
    sget-object v40, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->KIOSK:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_2

    .line 6372
    new-instance v34, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    invoke-direct/range {v34 .. v34}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;-><init>()V

    .restart local v34    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    goto :goto_1

    .line 6373
    .end local v34    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    :cond_2
    sget-object v40, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->BBC:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_3

    .line 6374
    new-instance v34, Lcom/samsung/android/knox/container/BBCConfigurationType;

    invoke-direct/range {v34 .. v34}, Lcom/samsung/android/knox/container/BBCConfigurationType;-><init>()V

    .restart local v34    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    goto :goto_1

    .line 6375
    .end local v34    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    :cond_3
    sget-object v40, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->SECUREFOLDER:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_4

    .line 6376
    new-instance v34, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;

    invoke-direct/range {v34 .. v34}, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;-><init>()V

    .restart local v34    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    goto/16 :goto_1

    .line 6377
    .end local v34    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    :cond_4
    sget-object v40, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->LAUNCHER:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_5

    .line 6378
    new-instance v34, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    invoke-direct/range {v34 .. v34}, Lcom/samsung/android/knox/container/KnoxConfigurationType;-><init>()V

    .restart local v34    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    goto/16 :goto_1

    .line 6380
    .end local v34    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->isDefaultLWCModel()Z

    move-result v40

    if-eqz v40, :cond_6

    .line 6381
    new-instance v34, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    invoke-direct/range {v34 .. v34}, Lcom/samsung/android/knox/container/LightweightConfigurationType;-><init>()V

    .restart local v34    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    goto/16 :goto_1

    .line 6384
    .end local v34    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    :cond_6
    new-instance v34, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    invoke-direct/range {v34 .. v34}, Lcom/samsung/android/knox/container/KnoxConfigurationType;-><init>()V

    .restart local v34    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    goto/16 :goto_1

    .line 6387
    .end local v34    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .end local v39    # "value":Ljava/lang/String;
    :cond_7
    const-string/jumbo v40, "column"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_5d

    .line 6388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "value"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6389
    .restart local v39    # "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "name"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 6392
    .local v22, "nameAttribute":Ljava/lang/String;
    const-string/jumbo v40, "Name"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_9

    if-eqz v34, :cond_9

    .line 6394
    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 7078
    .end local v12    # "event":I
    .end local v18    # "intVal":I
    .end local v20    # "isRCPDataSettings":Z
    .end local v22    # "nameAttribute":Ljava/lang/String;
    .end local v29    # "productName":Ljava/lang/String;
    .end local v35    # "tag":Ljava/lang/String;
    .end local v39    # "value":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 7079
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v40, "MumXmlDataParser"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "readFromXml EX:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6345
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_8
    return-void

    .line 6396
    .restart local v12    # "event":I
    .restart local v18    # "intVal":I
    .restart local v20    # "isRCPDataSettings":Z
    .restart local v22    # "nameAttribute":Ljava/lang/String;
    .restart local v29    # "productName":Ljava/lang/String;
    .restart local v35    # "tag":Ljava/lang/String;
    .restart local v39    # "value":Ljava/lang/String;
    :cond_9
    :try_start_1
    const-string/jumbo v40, "UID"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_a

    .line 6398
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 6399
    if-ltz v18, :cond_0

    if-eqz v34, :cond_0

    .line 6400
    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setAdminUid(I)V

    goto/16 :goto_1

    .line 6402
    :cond_a
    const-string/jumbo v40, "UserID"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_b

    .line 6404
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 6405
    const/16 v40, -0x1

    move/from16 v0, v18

    move/from16 v1, v40

    if-lt v0, v1, :cond_0

    if-eqz v34, :cond_0

    .line 6406
    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setUserId(I)V

    goto/16 :goto_1

    .line 6408
    :cond_b
    const-string/jumbo v40, "PersonaIDs"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_c

    .line 6410
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .local v27, "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto/16 :goto_1

    .line 6412
    .end local v27    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_c
    const-string/jumbo v40, "Version"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_d

    .line 6413
    if-eqz v34, :cond_0

    .line 6414
    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6415
    :cond_d
    const-string/jumbo v40, "MaximumTimeToLock"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_e

    .line 6417
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 6418
    if-lez v18, :cond_0

    if-eqz v34, :cond_0

    .line 6419
    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumTimeToLock(I)V

    goto/16 :goto_1

    .line 6421
    :cond_e
    const-string/jumbo v40, "KeyguardDisabledFeatures"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_f

    .line 6422
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 6423
    if-ltz v18, :cond_0

    if-eqz v34, :cond_0

    .line 6424
    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setKeyguardDisabledFeatures(I)V

    goto/16 :goto_1

    .line 6426
    :cond_f
    const-string/jumbo v40, "DefaultContainerLayout"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_10

    .line 6427
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 6429
    if-lez v18, :cond_0

    if-eqz v34, :cond_0

    .line 6430
    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setContainerLayout(I)V

    goto/16 :goto_1

    .line 6432
    :cond_10
    const-string/jumbo v40, "LayoutSwitchingAllowed"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_11

    .line 6433
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 6435
    .local v9, "booleanVal":Z
    if-eqz v34, :cond_0

    .line 6436
    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowLayoutSwitching(Z)V

    goto/16 :goto_1

    .line 6438
    .end local v9    # "booleanVal":Z
    :cond_11
    const-string/jumbo v40, "DefaultConfigType"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_12

    .line 6439
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 6441
    .restart local v9    # "booleanVal":Z
    if-eqz v34, :cond_0

    .line 6442
    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setDefaultConfigType(Z)V

    goto/16 :goto_1

    .line 6445
    .end local v9    # "booleanVal":Z
    :cond_12
    const-string/jumbo v40, "PasswordMinimumLength"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_13

    .line 6447
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 6448
    if-lez v18, :cond_0

    if-eqz v34, :cond_0

    .line 6449
    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumLength(I)V

    goto/16 :goto_1

    .line 6451
    :cond_13
    const-string/jumbo v40, "PasswordMinimumNonLetters"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_14

    .line 6453
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 6454
    if-lez v18, :cond_0

    if-eqz v34, :cond_0

    .line 6455
    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumNonLetters(I)V

    goto/16 :goto_1

    .line 6457
    :cond_14
    const-string/jumbo v40, "PasswordMinimumLetters"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_15

    .line 6459
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 6460
    if-lez v18, :cond_0

    if-eqz v34, :cond_0

    .line 6461
    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumLetters(I)V

    goto/16 :goto_1

    .line 6463
    :cond_15
    const-string/jumbo v40, "PasswordMinimumNumeric"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_16

    .line 6465
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 6466
    if-lez v18, :cond_0

    if-eqz v34, :cond_0

    .line 6467
    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumNumeric(I)V

    goto/16 :goto_1

    .line 6469
    :cond_16
    const-string/jumbo v40, "PasswordMinimumUpperCase"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_17

    .line 6471
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 6472
    if-lez v18, :cond_0

    if-eqz v34, :cond_0

    .line 6473
    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumUpperCase(I)V

    goto/16 :goto_1

    .line 6475
    :cond_17
    const-string/jumbo v40, "PasswordMinimumLowerCase"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_18

    .line 6477
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 6478
    if-lez v18, :cond_0

    if-eqz v34, :cond_0

    .line 6479
    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumLowerCase(I)V

    goto/16 :goto_1

    .line 6481
    :cond_18
    const-string/jumbo v40, "PasswordMinimumSymbols"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_19

    .line 6483
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 6484
    if-lez v18, :cond_0

    if-eqz v34, :cond_0

    .line 6485
    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumSymbols(I)V

    goto/16 :goto_1

    .line 6487
    :cond_19
    const-string/jumbo v40, "PasswordQuality"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1a

    .line 6489
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 6490
    if-ltz v18, :cond_0

    if-eqz v34, :cond_0

    .line 6491
    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordQuality(I)V

    goto/16 :goto_1

    .line 6493
    :cond_1a
    const-string/jumbo v40, "MaximumFailedPasswordsForWipe"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1b

    .line 6495
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 6496
    if-lez v18, :cond_0

    if-eqz v34, :cond_0

    .line 6497
    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumFailedPasswordsForWipe(I)V

    goto/16 :goto_1

    .line 6499
    :cond_1b
    const-string/jumbo v40, "MaximumCharacterOccurences"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1c

    .line 6501
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 6502
    if-lez v18, :cond_0

    if-eqz v34, :cond_0

    .line 6503
    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumCharacterOccurences(I)V

    goto/16 :goto_1

    .line 6505
    :cond_1c
    const-string/jumbo v40, "MaximumCharacterSequenceLength"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1d

    .line 6507
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 6508
    if-lez v18, :cond_0

    if-eqz v34, :cond_0

    .line 6509
    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumCharacterSequenceLength(I)V

    goto/16 :goto_1

    .line 6511
    :cond_1d
    const-string/jumbo v40, "MaximumNumericSequenceLength"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1e

    .line 6513
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 6514
    if-lez v18, :cond_0

    if-eqz v34, :cond_0

    .line 6515
    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumNumericSequenceLength(I)V

    goto/16 :goto_1

    .line 6517
    :cond_1e
    const-string/jumbo v40, "SimplePasswordEnabled"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1f

    if-eqz v34, :cond_1f

    .line 6519
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 6520
    .restart local v9    # "booleanVal":Z
    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setSimplePasswordEnabled(Z)V

    goto/16 :goto_1

    .line 6522
    .end local v9    # "booleanVal":Z
    :cond_1f
    const-string/jumbo v40, "MultifactorAuthEnabled"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_20

    if-eqz v34, :cond_20

    .line 6524
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 6525
    .restart local v9    # "booleanVal":Z
    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->enforceMultifactorAuthentication(Z)V

    goto/16 :goto_1

    .line 6527
    .end local v9    # "booleanVal":Z
    :cond_20
    const-string/jumbo v40, "UserManaged"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_21

    if-eqz v34, :cond_21

    .line 6529
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 6530
    .restart local v9    # "booleanVal":Z
    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setManagedType(Z)V

    goto/16 :goto_1

    .line 6532
    .end local v9    # "booleanVal":Z
    :cond_21
    const-string/jumbo v40, "ForbiddenStrings"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_22

    .line 6534
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .local v13, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 6536
    .end local v13    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_22
    const-string/jumbo v40, "AppInstallList"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_23

    .line 6538
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 6540
    .local v6, "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 6543
    .end local v6    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_23
    const-string/jumbo v40, "ProtectedPkgList"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_24

    .line 6545
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .local v31, "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 6547
    .end local v31    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_24
    const-string/jumbo v40, "GoogleAppsPkgList"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_25

    .line 6549
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .local v14, "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 6551
    .end local v14    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_25
    const-string/jumbo v40, "FOTADisableAppsPkgList"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_26

    .line 6553
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6554
    .local v4, "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 6556
    .end local v4    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_26
    const-string/jumbo v40, "AppInstallListForFotaClone"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_27

    .line 6559
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    .line 6560
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    goto/16 :goto_1

    .line 6562
    :cond_27
    const-string/jumbo v40, "AppDisableListForFotaClone"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_28

    .line 6565
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    .line 6566
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppReenableList:Ljava/util/List;

    goto/16 :goto_1

    .line 6568
    :cond_28
    const-string/jumbo v40, "PatternRestriction"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_2b

    if-eqz v34, :cond_2b

    .line 6570
    if-eqz v39, :cond_29

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_2a

    .line 6571
    :cond_29
    const/16 v39, 0x0

    .line 6573
    .end local v39    # "value":Ljava/lang/String;
    :cond_2a
    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setRequiredPasswordPattern(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6575
    .restart local v39    # "value":Ljava/lang/String;
    :cond_2b
    const-string/jumbo v40, "CustomBadgeIcon"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_2e

    if-eqz v34, :cond_2e

    .line 6577
    if-eqz v39, :cond_2c

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_2d

    .line 6578
    :cond_2c
    const/16 v39, 0x0

    .line 6580
    .end local v39    # "value":Ljava/lang/String;
    :cond_2d
    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomBadgeIcon(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6582
    .restart local v39    # "value":Ljava/lang/String;
    :cond_2e
    const-string/jumbo v40, "CustomHomeScreenWallpaper"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_31

    if-eqz v34, :cond_31

    .line 6584
    if-eqz v39, :cond_2f

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_30

    .line 6585
    :cond_2f
    const/16 v39, 0x0

    .line 6587
    .end local v39    # "value":Ljava/lang/String;
    :cond_30
    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomHomeScreenWallpaper(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6589
    .restart local v39    # "value":Ljava/lang/String;
    :cond_31
    const-string/jumbo v40, "EC"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_32

    if-eqz v34, :cond_32

    .line 6591
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 6593
    .restart local v9    # "booleanVal":Z
    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerEnabled(Z)V

    goto/16 :goto_1

    .line 6595
    .end local v9    # "booleanVal":Z
    :cond_32
    const-string/jumbo v40, "NameIcon"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_35

    if-eqz v34, :cond_35

    .line 6597
    if-eqz v39, :cond_33

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_34

    .line 6598
    :cond_33
    const/16 v39, 0x0

    .line 6600
    .end local v39    # "value":Ljava/lang/String;
    :cond_34
    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerNameIcon(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6602
    .restart local v39    # "value":Ljava/lang/String;
    :cond_35
    const-string/jumbo v40, "ECName"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_38

    if-eqz v34, :cond_38

    .line 6604
    if-eqz v39, :cond_36

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_37

    .line 6605
    :cond_36
    const/16 v39, 0x0

    .line 6607
    .end local v39    # "value":Ljava/lang/String;
    :cond_37
    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6609
    .restart local v39    # "value":Ljava/lang/String;
    :cond_38
    const-string/jumbo v40, "ECIcon"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_3b

    if-eqz v34, :cond_3b

    .line 6611
    if-eqz v39, :cond_39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_3a

    .line 6612
    :cond_39
    const/16 v39, 0x0

    .line 6614
    .end local v39    # "value":Ljava/lang/String;
    :cond_3a
    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerIcon(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6616
    .restart local v39    # "value":Ljava/lang/String;
    :cond_3b
    const-string/jumbo v40, "ECBadge"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_3e

    if-eqz v34, :cond_3e

    .line 6618
    if-eqz v39, :cond_3c

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_3d

    .line 6619
    :cond_3c
    const/16 v39, 0x0

    .line 6621
    .end local v39    # "value":Ljava/lang/String;
    :cond_3d
    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerBadge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6623
    .restart local v39    # "value":Ljava/lang/String;
    :cond_3e
    const-string/jumbo v40, "CustomLockScreenWallpaper"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_41

    if-eqz v34, :cond_41

    .line 6625
    if-eqz v39, :cond_3f

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_40

    .line 6626
    :cond_3f
    const/16 v39, 0x0

    .line 6628
    .end local v39    # "value":Ljava/lang/String;
    :cond_40
    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomLockScreenWallpaper(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6630
    .restart local v39    # "value":Ljava/lang/String;
    :cond_41
    const-string/jumbo v40, "CustomStatusLabel"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_44

    if-eqz v34, :cond_44

    .line 6632
    if-eqz v39, :cond_42

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_43

    .line 6633
    :cond_42
    const/16 v39, 0x0

    .line 6635
    .end local v39    # "value":Ljava/lang/String;
    :cond_43
    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomStatusLabel(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6637
    .restart local v39    # "value":Ljava/lang/String;
    :cond_44
    const-string/jumbo v40, "CustomStatusIcon"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_47

    if-eqz v34, :cond_47

    .line 6639
    if-eqz v39, :cond_45

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_46

    .line 6640
    :cond_45
    const/16 v39, 0x0

    .line 6642
    .end local v39    # "value":Ljava/lang/String;
    :cond_46
    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomStatusIcon(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6644
    .restart local v39    # "value":Ljava/lang/String;
    :cond_47
    const-string/jumbo v40, "FolderHeaderTitle"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_4a

    if-eqz v34, :cond_4a

    .line 6646
    if-eqz v39, :cond_48

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_49

    .line 6647
    :cond_48
    const/16 v39, 0x0

    .line 6649
    .end local v39    # "value":Ljava/lang/String;
    :cond_49
    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_0

    .line 6650
    move-object/from16 v0, v34

    check-cast v0, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->setFolderHeaderTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6652
    .restart local v39    # "value":Ljava/lang/String;
    :cond_4a
    const-string/jumbo v40, "FolderHeaderIcon"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_4d

    if-eqz v34, :cond_4d

    .line 6654
    if-eqz v39, :cond_4b

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_4c

    .line 6655
    :cond_4b
    const/16 v39, 0x0

    .line 6657
    .end local v39    # "value":Ljava/lang/String;
    :cond_4c
    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_0

    .line 6658
    move-object/from16 v0, v34

    check-cast v0, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->setFolderHeaderIcon(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6660
    .restart local v39    # "value":Ljava/lang/String;
    :cond_4d
    const-string/jumbo v40, "FolderDisabledChangeLayout"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_50

    if-eqz v34, :cond_50

    .line 6662
    if-eqz v39, :cond_4e

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_4f

    .line 6663
    :cond_4e
    const/16 v39, 0x0

    .line 6665
    .end local v39    # "value":Ljava/lang/String;
    :cond_4f
    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_0

    .line 6666
    move-object/from16 v0, v34

    check-cast v0, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->setFolderDisabledChangeLayout(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6668
    .restart local v39    # "value":Ljava/lang/String;
    :cond_50
    const-string/jumbo v40, "RCPDataSettings"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_51

    .line 6670
    const/16 v20, 0x1

    .line 6671
    if-nez v21, :cond_0

    .line 6672
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .local v21, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 6675
    .end local v21    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_51
    const-string/jumbo v40, "RCPAllowChangeDataSettings"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_52

    .line 6677
    const/16 v20, 0x0

    .line 6678
    if-nez v21, :cond_0

    .line 6679
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .restart local v21    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 6682
    .end local v21    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_52
    const-string/jumbo v40, "RCPNotifSettings"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_53

    .line 6684
    if-nez v21, :cond_0

    .line 6685
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .restart local v21    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 6688
    .end local v21    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_53
    const-string/jumbo v40, "AllowMultiwindowMode"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_54

    if-eqz v34, :cond_54

    .line 6690
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 6691
    .restart local v9    # "booleanVal":Z
    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowMultiwindowMode(Z)V

    goto/16 :goto_1

    .line 6693
    .end local v9    # "booleanVal":Z
    :cond_54
    const-string/jumbo v40, "AllowTaskManager"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_55

    if-eqz v34, :cond_55

    .line 6695
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 6696
    .restart local v9    # "booleanVal":Z
    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowTaskManager(Z)V

    goto/16 :goto_1

    .line 6698
    .end local v9    # "booleanVal":Z
    :cond_55
    const-string/jumbo v40, "AllowSettingsChanges"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_56

    if-eqz v34, :cond_56

    .line 6700
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 6701
    .restart local v9    # "booleanVal":Z
    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_0

    .line 6702
    move-object/from16 v0, v34

    check-cast v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->allowSettingsChanges(Z)V

    goto/16 :goto_1

    .line 6704
    .end local v9    # "booleanVal":Z
    :cond_56
    const-string/jumbo v40, "AllowStatusBarExpansion"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_57

    if-eqz v34, :cond_57

    .line 6706
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 6707
    .restart local v9    # "booleanVal":Z
    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_0

    .line 6708
    move-object/from16 v0, v34

    check-cast v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->allowStatusBarExpansion(Z)V

    goto/16 :goto_1

    .line 6710
    .end local v9    # "booleanVal":Z
    :cond_57
    const-string/jumbo v40, "AllowHomeKey"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_58

    if-eqz v34, :cond_58

    .line 6712
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 6713
    .restart local v9    # "booleanVal":Z
    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_0

    .line 6714
    move-object/from16 v0, v34

    check-cast v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->allowHomeKey(Z)V

    goto/16 :goto_1

    .line 6716
    .end local v9    # "booleanVal":Z
    :cond_58
    const-string/jumbo v40, "AllowClearAllNotification"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_59

    if-eqz v34, :cond_59

    .line 6718
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 6719
    .restart local v9    # "booleanVal":Z
    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_0

    .line 6720
    move-object/from16 v0, v34

    check-cast v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->allowClearAllNotification(Z)V

    goto/16 :goto_1

    .line 6722
    .end local v9    # "booleanVal":Z
    :cond_59
    const-string/jumbo v40, "HideSystemBar"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_5a

    if-eqz v34, :cond_5a

    .line 6724
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 6725
    .restart local v9    # "booleanVal":Z
    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_0

    .line 6726
    move-object/from16 v0, v34

    check-cast v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->setHideSystemBar(Z)V

    goto/16 :goto_1

    .line 6728
    .end local v9    # "booleanVal":Z
    :cond_5a
    const-string/jumbo v40, "WipeRecentTasks"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_5b

    if-eqz v34, :cond_5b

    .line 6730
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 6731
    .restart local v9    # "booleanVal":Z
    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_0

    .line 6732
    move-object/from16 v0, v34

    check-cast v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->setWipeRecentTasks(Z)V

    goto/16 :goto_1

    .line 6734
    .end local v9    # "booleanVal":Z
    :cond_5b
    const-string/jumbo v40, "BiometricAuthEnabled"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_5c

    if-eqz v34, :cond_5c

    .line 6735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "type"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 6736
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 6737
    .restart local v9    # "booleanVal":Z
    if-eqz v9, :cond_0

    if-lez v18, :cond_0

    .line 6738
    const/16 v40, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v18

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setBiometricAuthenticationEnabled(IZ)V

    goto/16 :goto_1

    .line 6740
    .end local v9    # "booleanVal":Z
    :cond_5c
    const-string/jumbo v40, "USBDebuggingAllowed"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_0

    if-eqz v34, :cond_0

    .line 6742
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 6743
    .restart local v9    # "booleanVal":Z
    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowUSBDebugging(Z)V

    goto/16 :goto_1

    .line 6746
    .end local v9    # "booleanVal":Z
    .end local v22    # "nameAttribute":Ljava/lang/String;
    .end local v39    # "value":Ljava/lang/String;
    :cond_5d
    const-string/jumbo v40, "persona"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_5e

    .line 6748
    if-eqz v27, :cond_0

    .line 6749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "id"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6751
    .restart local v39    # "value":Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 6752
    if-lez v18, :cond_0

    .line 6753
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v27

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6756
    .end local v39    # "value":Ljava/lang/String;
    :cond_5e
    const-string/jumbo v40, "forbiddenString"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_5f

    .line 6758
    if-eqz v13, :cond_0

    .line 6759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "value"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6761
    .restart local v39    # "value":Ljava/lang/String;
    if-eqz v39, :cond_0

    .line 6762
    move-object/from16 v0, v39

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6764
    .end local v39    # "value":Ljava/lang/String;
    :cond_5f
    const-string/jumbo v40, "cloneapplication"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_61

    .line 6766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    move-object/from16 v40, v0

    if-eqz v40, :cond_0

    .line 6767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "name"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6770
    .restart local v39    # "value":Ljava/lang/String;
    if-eqz v39, :cond_0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 6771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "remove"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 6772
    .local v33, "remove":Ljava/lang/String;
    if-eqz v33, :cond_60

    const-string/jumbo v40, "true"

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_60

    .line 6774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6779
    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6785
    .end local v33    # "remove":Ljava/lang/String;
    .end local v39    # "value":Ljava/lang/String;
    :cond_61
    const-string/jumbo v40, "clonedisablePkg"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_63

    .line 6787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    move-object/from16 v40, v0

    if-eqz v40, :cond_0

    .line 6788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "name"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6790
    .restart local v39    # "value":Ljava/lang/String;
    if-eqz v39, :cond_0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 6791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "reenable"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 6792
    .local v32, "re_enable_attr":Ljava/lang/String;
    if-eqz v32, :cond_62

    const-string/jumbo v40, "true"

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_62

    .line 6794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppReenableList:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6797
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6801
    .end local v32    # "re_enable_attr":Ljava/lang/String;
    .end local v39    # "value":Ljava/lang/String;
    :cond_63
    const-string/jumbo v40, "application"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_6a

    .line 6802
    if-eqz v6, :cond_0

    .line 6803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "name"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6806
    .restart local v39    # "value":Ljava/lang/String;
    const-string/jumbo v40, "com.android.contacts"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_64

    .line 6807
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getContactsPackageName()Ljava/lang/String;

    move-result-object v39

    .line 6810
    :cond_64
    const-string/jumbo v40, "com.android.calendar"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_65

    .line 6811
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getCalendarPackageName()Ljava/lang/String;

    move-result-object v39

    .line 6813
    :cond_65
    if-eqz v39, :cond_0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 6815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "remove"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 6816
    .restart local v33    # "remove":Ljava/lang/String;
    if-eqz v33, :cond_66

    const-string/jumbo v40, "true"

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_66

    .line 6817
    move-object/from16 v0, v39

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6819
    :cond_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "allow"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 6820
    .local v10, "content":Ljava/lang/String;
    if-eqz v10, :cond_67

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_69

    .line 6821
    :cond_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "disallow"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 6822
    if-eqz v10, :cond_68

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_0

    .line 6823
    :cond_68
    move-object/from16 v0, v39

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6825
    :cond_69
    const-string/jumbo v40, "systemAppOnly"

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_0

    .line 6826
    invoke-static/range {v39 .. v39}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap2(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_0

    .line 6827
    move-object/from16 v0, v39

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6834
    .end local v10    # "content":Ljava/lang/String;
    .end local v33    # "remove":Ljava/lang/String;
    .end local v39    # "value":Ljava/lang/String;
    :cond_6a
    const-string/jumbo v40, "replace"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_6c

    .line 6835
    if-eqz v6, :cond_0

    .line 6837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "value"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6839
    .restart local v39    # "value":Ljava/lang/String;
    const-string/jumbo v40, " "

    const-string/jumbo v41, ""

    invoke-virtual/range {v39 .. v41}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    const-string/jumbo v41, ","

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    .line 6840
    .local v36, "target":[Ljava/lang/String;
    const/16 v40, 0x0

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v41, v0

    :goto_2
    move/from16 v0, v40

    move/from16 v1, v41

    if-ge v0, v1, :cond_0

    aget-object v23, v36, v40

    .line 6841
    .local v23, "oper":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_6b

    .line 6842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v42, v0

    const-string/jumbo v43, "name"

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    move-object/from16 v2, v43

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6844
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v42

    add-int/lit8 v42, v42, -0x1

    move/from16 v0, v42

    move-object/from16 v1, v39

    invoke-interface {v6, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6840
    :cond_6b
    add-int/lit8 v40, v40, 0x1

    goto :goto_2

    .line 6848
    .end local v23    # "oper":Ljava/lang/String;
    .end local v36    # "target":[Ljava/lang/String;
    .end local v39    # "value":Ljava/lang/String;
    :cond_6c
    const-string/jumbo v40, "groupPkg"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_6e

    .line 6849
    if-eqz v6, :cond_0

    .line 6850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "value"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6852
    .restart local v39    # "value":Ljava/lang/String;
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "installPkg$iterator":Ljava/util/Iterator;
    :cond_6d
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 6853
    .local v16, "installPkg":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_6d

    .line 6854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "name"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6859
    .end local v16    # "installPkg":Ljava/lang/String;
    .end local v17    # "installPkg$iterator":Ljava/util/Iterator;
    .end local v39    # "value":Ljava/lang/String;
    :cond_6e
    const-string/jumbo v40, "provider"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_71

    .line 6861
    if-eqz v21, :cond_0

    .line 6862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "name"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6864
    .restart local v39    # "value":Ljava/lang/String;
    if-eqz v39, :cond_6f

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_70

    .line 6866
    :cond_6f
    :goto_3
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .local v26, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    goto/16 :goto_1

    .line 6865
    .end local v26    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_70
    move-object/from16 v0, v21

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 6869
    .end local v39    # "value":Ljava/lang/String;
    :cond_71
    const-string/jumbo v40, "package"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_77

    .line 6871
    if-eqz v28, :cond_74

    .line 6872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "name"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6874
    .restart local v39    # "value":Ljava/lang/String;
    if-eqz v39, :cond_0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 6875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "allow"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 6876
    .restart local v10    # "content":Ljava/lang/String;
    if-eqz v10, :cond_72

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_0

    .line 6877
    :cond_72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "disallow"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 6878
    if-eqz v10, :cond_73

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_0

    .line 6879
    :cond_73
    move-object/from16 v0, v28

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6883
    .end local v10    # "content":Ljava/lang/String;
    .end local v39    # "value":Ljava/lang/String;
    :cond_74
    if-eqz v21, :cond_0

    .line 6884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "name"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6886
    .restart local v39    # "value":Ljava/lang/String;
    if-eqz v39, :cond_75

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_76

    .line 6888
    :cond_75
    :goto_4
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .restart local v26    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    goto/16 :goto_1

    .line 6887
    .end local v26    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_76
    move-object/from16 v0, v21

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 6890
    .end local v39    # "value":Ljava/lang/String;
    :cond_77
    const-string/jumbo v40, "policy"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_79

    .line 6891
    if-nez v8, :cond_78

    .line 6892
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 6894
    :cond_78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "name"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6895
    .restart local v39    # "value":Ljava/lang/String;
    if-eqz v39, :cond_0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 6896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "value"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 6898
    .restart local v10    # "content":Ljava/lang/String;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, "/"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6900
    .end local v10    # "content":Ljava/lang/String;
    .end local v39    # "value":Ljava/lang/String;
    :cond_79
    const-string/jumbo v40, "property"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_7a

    .line 6901
    if-eqz v26, :cond_0

    .line 6902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "name"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 6904
    .local v30, "property":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "value"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6906
    .restart local v39    # "value":Ljava/lang/String;
    if-eqz v30, :cond_0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 6907
    if-eqz v39, :cond_0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 6908
    new-instance v40, Landroid/util/Pair;

    move-object/from16 v0, v40

    move-object/from16 v1, v30

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6912
    .end local v30    # "property":Ljava/lang/String;
    .end local v39    # "value":Ljava/lang/String;
    :cond_7a
    const-string/jumbo v40, "protectedPkg"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_7b

    .line 6914
    if-eqz v31, :cond_0

    .line 6915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "name"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6917
    .restart local v39    # "value":Ljava/lang/String;
    if-eqz v39, :cond_0

    .line 6918
    move-object/from16 v0, v31

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6921
    .end local v39    # "value":Ljava/lang/String;
    :cond_7b
    const-string/jumbo v40, "disablePkg"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_81

    .line 6923
    if-eqz v14, :cond_0

    .line 6924
    const/16 v19, 0x1

    .line 6927
    .local v19, "isDisabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "value"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6928
    .restart local v39    # "value":Ljava/lang/String;
    if-eqz v39, :cond_7d

    .line 6929
    const-string/jumbo v40, " "

    const-string/jumbo v41, ""

    invoke-virtual/range {v39 .. v41}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    const-string/jumbo v41, ","

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    .line 6930
    .restart local v36    # "target":[Ljava/lang/String;
    const/16 v40, 0x0

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v41, v0

    :goto_5
    move/from16 v0, v40

    move/from16 v1, v41

    if-ge v0, v1, :cond_7d

    aget-object v23, v36, v40

    .line 6931
    .restart local v23    # "oper":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_7c

    .line 6932
    const/16 v19, 0x0

    .line 6930
    :cond_7c
    add-int/lit8 v40, v40, 0x1

    goto :goto_5

    .line 6936
    .end local v23    # "oper":Ljava/lang/String;
    .end local v36    # "target":[Ljava/lang/String;
    :cond_7d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "name"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6938
    if-eqz v39, :cond_0

    .line 6939
    const-string/jumbo v40, "com.android.chrome"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_7f

    .line 6940
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap1()Z

    move-result v40

    if-eqz v40, :cond_7e

    const/16 v19, 0x1

    .line 6941
    :cond_7e
    if-eqz v19, :cond_7f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->isBrowserInstalled()Z

    move-result v40

    if-eqz v40, :cond_80

    .line 6945
    :cond_7f
    :goto_6
    if-eqz v19, :cond_0

    .line 6946
    move-object/from16 v0, v39

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6941
    :cond_80
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->isLwcContainerType(Lcom/samsung/android/knox/container/KnoxConfigurationType;)Z

    move-result v40

    if-nez v40, :cond_7f

    .line 6942
    const/16 v19, 0x0

    goto :goto_6

    .line 6949
    .end local v19    # "isDisabled":Z
    .end local v39    # "value":Ljava/lang/String;
    :cond_81
    const-string/jumbo v40, "fotadisablePkg"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_83

    .line 6950
    if-eqz v4, :cond_0

    .line 6951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "name"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6955
    .restart local v39    # "value":Ljava/lang/String;
    if-eqz v39, :cond_0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 6957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "reenable"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 6959
    .restart local v32    # "re_enable_attr":Ljava/lang/String;
    if-eqz v32, :cond_82

    const-string/jumbo v40, "true"

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_82

    .line 6960
    move-object/from16 v0, v39

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6962
    :cond_82
    move-object/from16 v0, v39

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6967
    .end local v32    # "re_enable_attr":Ljava/lang/String;
    .end local v39    # "value":Ljava/lang/String;
    :cond_83
    const-string/jumbo v40, "knoxCore"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_0

    .line 6969
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .local v28, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 6975
    .end local v28    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v35    # "tag":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v35

    .line 6976
    .restart local v35    # "tag":Ljava/lang/String;
    const-string/jumbo v40, "row"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_96

    if-eqz v34, :cond_96

    .line 6977
    if-eqz v6, :cond_85

    .line 6978
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v40

    move/from16 v0, v40

    if-ge v15, v0, :cond_85

    .line 6979
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    const-string/jumbo v41, "group_"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_84

    .line 6981
    invoke-interface {v6, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6978
    :cond_84
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 6985
    .end local v15    # "i":I
    :cond_85
    if-eqz v27, :cond_86

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_8e

    .line 6988
    :cond_86
    :goto_8
    if-eqz v13, :cond_87

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_8f

    .line 6991
    :cond_87
    :goto_9
    if-eqz v6, :cond_88

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_90

    .line 6995
    :cond_88
    :goto_a
    if-eqz v7, :cond_89

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_91

    .line 6999
    :cond_89
    :goto_b
    if-eqz v31, :cond_8a

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_92

    .line 7001
    :cond_8a
    :goto_c
    if-eqz v14, :cond_8b

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_93

    .line 7004
    :cond_8b
    :goto_d
    if-eqz v4, :cond_8c

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_94

    .line 7009
    :cond_8c
    :goto_e
    if-eqz v5, :cond_8d

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_95

    .line 7015
    :cond_8d
    :goto_f
    invoke-virtual/range {v34 .. v34}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->dumpState()V

    .line 7016
    const/16 v27, 0x0

    .line 7017
    .local v27, "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    .line 7018
    .local v13, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 7020
    .local v6, "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 7022
    .local v7, "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v31, 0x0

    .line 7023
    .local v31, "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 7024
    .local v14, "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 7025
    .local v4, "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 7026
    .local v5, "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v21, 0x0

    .line 7027
    .local v21, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v26, 0x0

    .line 7028
    .local v26, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6986
    .end local v4    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v27    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v31    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8e
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPersonaList(Ljava/util/List;)V

    goto :goto_8

    .line 6989
    :cond_8f
    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setForbiddenStrings(Ljava/util/List;)V

    goto :goto_9

    .line 6992
    :cond_90
    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setAppInstallationList(Ljava/util/List;)V

    goto :goto_a

    .line 6996
    :cond_91
    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setAppRemoveList(Ljava/util/List;)V

    goto :goto_b

    .line 7000
    :cond_92
    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setProtectedPackageList(Ljava/util/List;)V

    goto :goto_c

    .line 7002
    :cond_93
    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setGoogleAppsList(Ljava/util/List;)V

    goto :goto_d

    .line 7005
    :cond_94
    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setFOTADisableList(Ljava/util/List;)V

    goto :goto_e

    .line 7010
    :cond_95
    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setFOTAReenableList(Ljava/util/List;)V

    goto :goto_f

    .line 7030
    :cond_96
    const-string/jumbo v40, "provider"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_99

    .line 7032
    if-eqz v21, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 7033
    if-eqz v26, :cond_0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 7034
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "pair$iterator":Ljava/util/Iterator;
    :goto_10
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_98

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/Pair;

    .line 7035
    .local v24, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v20, :cond_97

    .line 7036
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setDataSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 7038
    :cond_97
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    invoke-static/range {v40 .. v40}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 7039
    .restart local v9    # "booleanVal":Z
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2, v9}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setAllowChangeDataSyncPolicy(Ljava/util/List;Ljava/lang/String;Z)V

    goto :goto_10

    .line 7042
    .end local v9    # "booleanVal":Z
    .end local v24    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_98
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    .line 7043
    const/16 v26, 0x0

    .restart local v26    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    goto/16 :goto_1

    .line 7046
    .end local v25    # "pair$iterator":Ljava/util/Iterator;
    .end local v26    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_99
    const-string/jumbo v40, "package"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_9b

    .line 7048
    if-eqz v21, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 7049
    if-eqz v26, :cond_0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 7050
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25    # "pair$iterator":Ljava/util/Iterator;
    :goto_11
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_9a

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/Pair;

    .line 7051
    .restart local v24    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setNotificationSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 7053
    .end local v24    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9a
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    .line 7054
    const/16 v26, 0x0

    .restart local v26    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    goto/16 :goto_1

    .line 7057
    .end local v25    # "pair$iterator":Ljava/util/Iterator;
    .end local v26    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_9b
    const-string/jumbo v40, "knoxCore"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_9f

    .line 7059
    if-eqz v28, :cond_9c

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_9e

    .line 7062
    :cond_9c
    :goto_12
    const/16 v28, 0x0

    .line 7064
    .local v28, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .local v38, "type$iterator":Ljava/util/Iterator;
    :cond_9d
    :goto_13
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_0

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 7065
    .local v37, "type":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    move-object/from16 v0, v37

    instance-of v0, v0, Lcom/samsung/android/knox/container/BBCConfigurationType;

    move/from16 v40, v0

    if-nez v40, :cond_9d

    .line 7066
    invoke-virtual/range {v37 .. v37}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v40

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get6()Ljava/util/List;

    move-result-object v41

    invoke-interface/range {v40 .. v41}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_13

    .line 7060
    .end local v28    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v37    # "type":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .end local v38    # "type$iterator":Ljava/util/Iterator;
    :cond_9e
    invoke-static/range {v28 .. v28}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-set0(Ljava/util/List;)Ljava/util/List;

    goto :goto_12

    .line 7069
    :cond_9f
    const-string/jumbo v40, "BadgePolicy"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_0

    .line 7070
    invoke-static {v8}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-set3(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 7071
    const/4 v8, 0x0

    .restart local v8    # "badgePolicylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 6362
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTypeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6314
    .local p1, "type":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/container/KnoxConfigurationType;>;"
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    .line 6313
    return-void
.end method

.method public writeToXml()V
    .locals 48

    .prologue
    .line 7324
    new-instance v15, Ljava/io/File;

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get2()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string/jumbo v46, "enterprisedata.xml"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7325
    .local v15, "file":Ljava/io/File;
    const/16 v38, 0x0

    .line 7327
    .local v38, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v39, Ljava/io/FileOutputStream;

    const/16 v45, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v45

    invoke-direct {v0, v15, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 7328
    .local v39, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v23, Lcom/android/internal/util/FastXmlSerializer;

    .end local v38    # "stream":Ljava/io/FileOutputStream;
    invoke-direct/range {v23 .. v23}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 7329
    .local v23, "out":Lorg/xmlpull/v1/XmlSerializer;
    const/16 v17, 0x0

    .line 7330
    .local v17, "intVal":I
    const/16 v37, 0x0

    .line 7331
    .local v37, "strVal":Ljava/lang/String;
    const/16 v45, 0x0

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 7332
    .local v8, "booleanVal":Ljava/lang/Boolean;
    const-string/jumbo v45, "utf-8"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 7333
    const/16 v45, 0x1

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v45

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 7335
    const-string/jumbo v45, "table"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7336
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "MUMContainerType"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v44

    .end local v37    # "strVal":Ljava/lang/String;
    .local v44, "type$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_4d

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 7338
    .local v43, "type":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    const-string/jumbo v45, "row"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7339
    move-object/from16 v0, v43

    instance-of v0, v0, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    move/from16 v45, v0

    if-eqz v45, :cond_3

    .line 7340
    const-string/jumbo v45, "type"

    sget-object v46, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->LIGHTWEIGHT:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v46 .. v46}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7351
    :goto_1
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v17

    .line 7352
    if-ltz v17, :cond_0

    .line 7353
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7354
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "UID"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7355
    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7356
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7358
    :cond_0
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getUserId()I

    move-result v17

    .line 7359
    const/16 v45, -0x1

    move/from16 v0, v17

    move/from16 v1, v45

    if-lt v0, v1, :cond_1

    .line 7360
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7361
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "UserID"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7362
    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7363
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7365
    :cond_1
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v29

    .line 7366
    .local v29, "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v29, :cond_8

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v45

    if-lez v45, :cond_8

    .line 7367
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7368
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "PersonaIDs"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7369
    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "personaId$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_7

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    .line 7370
    .local v27, "personaId":Ljava/lang/Integer;
    const-string/jumbo v45, "persona"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7371
    const-string/jumbo v45, "id"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7372
    const-string/jumbo v45, "persona"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 7886
    .end local v8    # "booleanVal":Ljava/lang/Boolean;
    .end local v17    # "intVal":I
    .end local v23    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v27    # "personaId":Ljava/lang/Integer;
    .end local v28    # "personaId$iterator":Ljava/util/Iterator;
    .end local v29    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v43    # "type":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .end local v44    # "type$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v13

    .local v13, "e":Ljava/io/IOException;
    move-object/from16 v38, v39

    .line 7888
    .end local v39    # "stream":Ljava/io/FileOutputStream;
    :goto_3
    if-eqz v38, :cond_2

    .line 7889
    :try_start_2
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 7323
    .end local v13    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    return-void

    .line 7341
    .restart local v8    # "booleanVal":Ljava/lang/Boolean;
    .restart local v17    # "intVal":I
    .restart local v23    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v39    # "stream":Ljava/io/FileOutputStream;
    .restart local v43    # "type":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .restart local v44    # "type$iterator":Ljava/util/Iterator;
    :cond_3
    :try_start_3
    move-object/from16 v0, v43

    instance-of v0, v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move/from16 v45, v0

    if-eqz v45, :cond_4

    .line 7342
    const-string/jumbo v45, "type"

    sget-object v46, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->KIOSK:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v46 .. v46}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 7343
    :cond_4
    move-object/from16 v0, v43

    instance-of v0, v0, Lcom/samsung/android/knox/container/BBCConfigurationType;

    move/from16 v45, v0

    if-eqz v45, :cond_5

    .line 7344
    const-string/jumbo v45, "type"

    sget-object v46, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->BBC:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v46 .. v46}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 7345
    :cond_5
    move-object/from16 v0, v43

    instance-of v0, v0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;

    move/from16 v45, v0

    if-eqz v45, :cond_6

    .line 7346
    const-string/jumbo v45, "type"

    sget-object v46, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->SECUREFOLDER:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v46 .. v46}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 7348
    :cond_6
    const-string/jumbo v45, "type"

    sget-object v46, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->LAUNCHER:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v46 .. v46}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 7374
    .restart local v28    # "personaId$iterator":Ljava/util/Iterator;
    .restart local v29    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_7
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7376
    .end local v28    # "personaId$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v37

    .line 7377
    .local v37, "strVal":Ljava/lang/String;
    if-eqz v37, :cond_9

    .line 7378
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7379
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "Name"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7380
    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7381
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7385
    :cond_9
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isDefaultConfigType()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 7386
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7387
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "DefaultConfigType"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7388
    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7389
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7391
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getContainerLayout()I

    move-result v17

    .line 7392
    if-ltz v17, :cond_a

    .line 7393
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7394
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "DefaultContainerLayout"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7395
    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7396
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7399
    :cond_a
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isLayoutSwitchingAllowed()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 7400
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7401
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "LayoutSwitchingAllowed"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7402
    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7403
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7406
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getVersion()Ljava/lang/String;

    move-result-object v37

    .line 7407
    if-eqz v37, :cond_b

    .line 7408
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7409
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "Version"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7410
    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7411
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7413
    :cond_b
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumTimeToLock()I

    move-result v17

    .line 7414
    if-eqz v17, :cond_c

    .line 7415
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7416
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "MaximumTimeToLock"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7417
    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7418
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7421
    :cond_c
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumLength()I

    move-result v17

    .line 7422
    if-eqz v17, :cond_d

    .line 7423
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7424
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "PasswordMinimumLength"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7425
    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7426
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7428
    :cond_d
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumNonLetters()I

    move-result v17

    .line 7429
    if-eqz v17, :cond_e

    .line 7430
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7431
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "PasswordMinimumNonLetters"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7432
    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7433
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7435
    :cond_e
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumLetters()I

    move-result v17

    .line 7436
    if-eqz v17, :cond_f

    .line 7437
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7438
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "PasswordMinimumLetters"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7439
    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7440
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7442
    :cond_f
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumNumeric()I

    move-result v17

    .line 7443
    if-eqz v17, :cond_10

    .line 7444
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7445
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "PasswordMinimumNumeric"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7446
    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7447
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7449
    :cond_10
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumUpperCase()I

    move-result v17

    .line 7450
    if-eqz v17, :cond_11

    .line 7451
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7452
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "PasswordMinimumUpperCase"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7453
    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7454
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7456
    :cond_11
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumLowerCase()I

    move-result v17

    .line 7457
    if-eqz v17, :cond_12

    .line 7458
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7459
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "PasswordMinimumLowerCase"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7460
    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7461
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7463
    :cond_12
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumSymbols()I

    move-result v17

    .line 7464
    if-eqz v17, :cond_13

    .line 7465
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7466
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "PasswordMinimumSymbols"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7467
    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7468
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7470
    :cond_13
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordQuality()I

    move-result v17

    .line 7471
    if-eqz v17, :cond_14

    .line 7472
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7473
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "PasswordQuality"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7474
    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7475
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7477
    :cond_14
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumFailedPasswordsForWipe()I

    move-result v17

    .line 7478
    if-eqz v17, :cond_15

    .line 7479
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7480
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "MaximumFailedPasswordsForWipe"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7481
    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7482
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7484
    :cond_15
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumCharacterOccurences()I

    move-result v17

    .line 7485
    if-eqz v17, :cond_16

    .line 7486
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7487
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "MaximumCharacterOccurences"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7488
    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7489
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7491
    :cond_16
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumCharacterSequenceLength()I

    move-result v17

    .line 7492
    if-eqz v17, :cond_17

    .line 7493
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7494
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "MaximumCharacterSequenceLength"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7495
    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7496
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7498
    :cond_17
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumNumericSequenceLength()I

    move-result v17

    .line 7499
    if-eqz v17, :cond_18

    .line 7500
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7501
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "MaximumNumericSequenceLength"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7502
    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7503
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7505
    :cond_18
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getKeyguardDisabledFeatures()I

    move-result v17

    .line 7506
    if-ltz v17, :cond_19

    .line 7507
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7508
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "KeyguardDisabledFeatures"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7509
    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7510
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7512
    :cond_19
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getSimplePasswordEnabled()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 7513
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v45

    if-nez v45, :cond_1a

    .line 7514
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7515
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "SimplePasswordEnabled"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7516
    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7517
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7519
    :cond_1a
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isMultifactorAuthenticationEnforced()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 7520
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v45

    if-eqz v45, :cond_1b

    .line 7521
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7522
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "MultifactorAuthEnabled"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7523
    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7524
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7526
    :cond_1b
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getManagedType()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 7527
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v45

    if-eqz v45, :cond_1c

    .line 7528
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7529
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "UserManaged"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7530
    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7531
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7533
    :cond_1c
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getBiometricAuthenticationEnabledValue()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 7534
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getBiometricAuthenticationEnabledType()I

    move-result v17

    .line 7535
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v45

    if-eqz v45, :cond_1d

    if-lez v17, :cond_1d

    .line 7536
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7537
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "BiometricAuthEnabled"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7538
    const-string/jumbo v45, "type"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7539
    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7540
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7542
    :cond_1d
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getForbiddenStrings()Ljava/util/List;

    move-result-object v16

    .line 7543
    .local v16, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v16, :cond_1f

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v45

    if-lez v45, :cond_1f

    .line 7544
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7545
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "ForbiddenStrings"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7546
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v41

    .local v41, "string$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_1e

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    .line 7547
    .local v40, "string":Ljava/lang/String;
    const-string/jumbo v45, "forbiddenString"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7548
    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v40

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7549
    const-string/jumbo v45, "forbiddenString"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5

    .line 7551
    .end local v40    # "string":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7553
    .end local v41    # "string$iterator":Ljava/util/Iterator;
    :cond_1f
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getRequiredPwdPatternRestrictions()Ljava/lang/String;

    move-result-object v37

    .line 7554
    if-eqz v37, :cond_20

    .line 7555
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7556
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "PatternRestriction"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7557
    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7558
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7560
    :cond_20
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v37

    .line 7561
    if-eqz v37, :cond_21

    .line 7562
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7563
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "CustomBadgeIcon"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7564
    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7565
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7567
    :cond_21
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v37

    .line 7568
    if-eqz v37, :cond_22

    .line 7569
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7570
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "CustomHomeScreenWallpaper"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7571
    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7572
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7575
    :cond_22
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isCustomizedContainerEnabled()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 7577
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7578
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "EC"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7579
    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7580
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7582
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerNameIcon()Ljava/lang/String;

    move-result-object v37

    .line 7583
    if-eqz v37, :cond_23

    .line 7584
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7585
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "NameIcon"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7586
    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7587
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7589
    :cond_23
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerName()Ljava/lang/String;

    move-result-object v37

    .line 7590
    if-eqz v37, :cond_24

    .line 7591
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7592
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "ECName"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7593
    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7594
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7596
    :cond_24
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerIcon()Ljava/lang/String;

    move-result-object v37

    .line 7597
    if-eqz v37, :cond_25

    .line 7598
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7599
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "ECIcon"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7600
    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7601
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7603
    :cond_25
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerBadge()Ljava/lang/String;

    move-result-object v37

    .line 7604
    if-eqz v37, :cond_26

    .line 7605
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7606
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "ECBadge"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7607
    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7608
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7611
    :cond_26
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v37

    .line 7612
    if-eqz v37, :cond_27

    .line 7613
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7614
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "CustomLockScreenWallpaper"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7615
    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7616
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7618
    :cond_27
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusLabel()Ljava/lang/String;

    move-result-object v37

    .line 7619
    if-eqz v37, :cond_28

    .line 7620
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7621
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "CustomStatusLabel"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7622
    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7623
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7625
    :cond_28
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v37

    .line 7626
    if-eqz v37, :cond_29

    .line 7627
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7628
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "CustomStatusIcon"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7629
    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7630
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7632
    :cond_29
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isMultiwindowModeAllowed()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 7633
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v45

    if-nez v45, :cond_2a

    .line 7634
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7635
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "AllowMultiwindowMode"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7636
    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7637
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7639
    :cond_2a
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isTaskManagerAllowed()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 7640
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v45

    if-nez v45, :cond_2b

    .line 7641
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7642
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "AllowTaskManager"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7643
    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7644
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7647
    :cond_2b
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isUSBDebuggingAllowed()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 7648
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v45

    if-eqz v45, :cond_2c

    .line 7649
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7650
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "USBDebuggingAllowed"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7651
    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7652
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7654
    :cond_2c
    move-object/from16 v0, v43

    instance-of v0, v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move/from16 v45, v0

    if-eqz v45, :cond_32

    .line 7655
    move-object/from16 v0, v43

    check-cast v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move-object/from16 v20, v0

    .line 7656
    .local v20, "kiosktype":Lcom/samsung/android/knox/container/ContainerModeConfigurationType;
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->isSettingChangesAllowed()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 7657
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v45

    if-eqz v45, :cond_2d

    .line 7658
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7659
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "AllowSettingsChanges"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7660
    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7661
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7663
    :cond_2d
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->isStatusBarExpansionAllowed()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 7664
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v45

    if-nez v45, :cond_2e

    .line 7665
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7666
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "AllowStatusBarExpansion"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7667
    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7668
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7670
    :cond_2e
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->isHomeKeyAllowed()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 7671
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v45

    if-eqz v45, :cond_2f

    .line 7672
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7673
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "AllowHomeKey"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7674
    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7675
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7677
    :cond_2f
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->isClearAllNotificationAllowed()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 7678
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v45

    if-eqz v45, :cond_30

    .line 7679
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7680
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "AllowClearAllNotification"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7681
    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7682
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7685
    :cond_30
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->isHideSystemBarEnabled()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 7686
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v45

    if-eqz v45, :cond_31

    .line 7687
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7688
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "HideSystemBar"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7689
    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7690
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7692
    :cond_31
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->isWipeRecentTasksEnabled()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 7693
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v45

    if-eqz v45, :cond_32

    .line 7694
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7695
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "WipeRecentTasks"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7696
    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7697
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7700
    .end local v20    # "kiosktype":Lcom/samsung/android/knox/container/ContainerModeConfigurationType;
    :cond_32
    move-object/from16 v0, v43

    instance-of v0, v0, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    move/from16 v45, v0

    if-eqz v45, :cond_35

    .line 7701
    move-object/from16 v0, v43

    check-cast v0, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    move-object/from16 v22, v0

    .line 7702
    .local v22, "lwctype":Lcom/samsung/android/knox/container/LightweightConfigurationType;
    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->getFolderHeaderTitle()Ljava/lang/String;

    move-result-object v37

    .line 7703
    if-eqz v37, :cond_33

    .line 7704
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7705
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "FolderHeaderTitle"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7706
    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7707
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7709
    :cond_33
    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->getFolderHeaderIcon()Ljava/lang/String;

    move-result-object v37

    .line 7710
    if-eqz v37, :cond_34

    .line 7711
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7712
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "FolderHeaderIcon"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7713
    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7714
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7717
    :cond_34
    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->getFolderDisabledChangeLayout()Ljava/lang/String;

    move-result-object v37

    .line 7718
    if-eqz v37, :cond_35

    .line 7719
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7720
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "FolderDisabledChangeLayout"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7721
    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7722
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7725
    .end local v22    # "lwctype":Lcom/samsung/android/knox/container/LightweightConfigurationType;
    :cond_35
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v21

    .line 7726
    .local v21, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v21, :cond_38

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v45

    if-lez v45, :cond_38

    .line 7727
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7728
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "AppInstallList"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7729
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "application$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_36

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 7730
    .local v4, "application":Ljava/lang/String;
    const-string/jumbo v45, "application"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7731
    const-string/jumbo v45, "name"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7732
    const-string/jumbo v45, "application"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_6

    .line 7735
    .end local v4    # "application":Ljava/lang/String;
    :cond_36
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppRemoveList()Ljava/util/List;

    move-result-object v35

    .line 7736
    .local v35, "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v35, :cond_37

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v45

    if-lez v45, :cond_37

    .line 7737
    invoke-interface/range {v35 .. v35}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_37

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 7738
    .restart local v4    # "application":Ljava/lang/String;
    const-string/jumbo v45, "application"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7739
    const-string/jumbo v45, "name"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7740
    const-string/jumbo v45, "remove"

    const-string/jumbo v46, "true"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7741
    const-string/jumbo v45, "application"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7

    .line 7745
    .end local v4    # "application":Ljava/lang/String;
    :cond_37
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7747
    .end local v5    # "application$iterator":Ljava/util/Iterator;
    .end local v35    # "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_38
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v21

    .line 7748
    if-eqz v21, :cond_3a

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v45

    if-lez v45, :cond_3a

    .line 7749
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7750
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "ProtectedPkgList"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7751
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, "protectedPkg$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_39

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 7752
    .local v30, "protectedPkg":Ljava/lang/String;
    const-string/jumbo v45, "protectedPkg"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7753
    const-string/jumbo v45, "name"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7754
    const-string/jumbo v45, "protectedPkg"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8

    .line 7756
    .end local v30    # "protectedPkg":Ljava/lang/String;
    :cond_39
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7759
    .end local v31    # "protectedPkg$iterator":Ljava/util/Iterator;
    :cond_3a
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v21

    .line 7760
    if-eqz v21, :cond_3c

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v45

    if-lez v45, :cond_3c

    .line 7761
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7762
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "GoogleAppsPkgList"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7763
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "disablePkg$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_3b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 7764
    .local v11, "disablePkg":Ljava/lang/String;
    const-string/jumbo v45, "disablePkg"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7765
    const-string/jumbo v45, "name"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7766
    const-string/jumbo v45, "disablePkg"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_9

    .line 7768
    .end local v11    # "disablePkg":Ljava/lang/String;
    :cond_3b
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7771
    .end local v12    # "disablePkg$iterator":Ljava/util/Iterator;
    :cond_3c
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getFOTADisableList()Ljava/util/List;

    move-result-object v21

    .line 7772
    if-eqz v21, :cond_3f

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v45

    if-lez v45, :cond_3f

    .line 7773
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7774
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "FOTADisableAppsPkgList"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7775
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "disablePkg$iterator":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_3d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 7776
    .restart local v11    # "disablePkg":Ljava/lang/String;
    const-string/jumbo v45, "fotadisablePkg"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7777
    const-string/jumbo v45, "name"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7778
    const-string/jumbo v45, "fotadisablePkg"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_a

    .line 7781
    .end local v11    # "disablePkg":Ljava/lang/String;
    :cond_3d
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getFOTAReenableList()Ljava/util/List;

    move-result-object v32

    .line 7782
    .local v32, "reenableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v32, :cond_3e

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->isEmpty()Z

    move-result v45

    if-eqz v45, :cond_43

    .line 7791
    :cond_3e
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7795
    .end local v12    # "disablePkg$iterator":Ljava/util/Iterator;
    .end local v32    # "reenableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3f
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getDataSyncPolicy()Ljava/util/HashMap;

    move-result-object v36

    .line 7796
    .local v36, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    if-eqz v36, :cond_40

    invoke-virtual/range {v36 .. v36}, Ljava/util/HashMap;->isEmpty()Z

    move-result v45

    if-eqz v45, :cond_44

    .line 7814
    :cond_40
    :goto_b
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAllowChangeDataSyncPolicy()Ljava/util/HashMap;

    move-result-object v36

    .line 7815
    if-eqz v36, :cond_41

    invoke-virtual/range {v36 .. v36}, Ljava/util/HashMap;->isEmpty()Z

    move-result v45

    if-eqz v45, :cond_47

    .line 7833
    :cond_41
    :goto_c
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getNotificationSyncPolicy()Ljava/util/HashMap;

    move-result-object v36

    .line 7834
    if-eqz v36, :cond_42

    invoke-virtual/range {v36 .. v36}, Ljava/util/HashMap;->isEmpty()Z

    move-result v45

    if-eqz v45, :cond_4a

    .line 7853
    :cond_42
    :goto_d
    const-string/jumbo v45, "row"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .line 7783
    .end local v36    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .restart local v12    # "disablePkg$iterator":Ljava/util/Iterator;
    .restart local v32    # "reenableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_43
    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .local v34, "reenablePkg$iterator":Ljava/util/Iterator;
    :goto_e
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_3e

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 7784
    .local v33, "reenablePkg":Ljava/lang/String;
    const-string/jumbo v45, "fotadisablePkg"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7785
    const-string/jumbo v45, "name"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7786
    const-string/jumbo v45, "reenable"

    const-string/jumbo v46, "true"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7787
    const-string/jumbo v45, "fotadisablePkg"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_e

    .line 7797
    .end local v12    # "disablePkg$iterator":Ljava/util/Iterator;
    .end local v32    # "reenableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v33    # "reenablePkg":Ljava/lang/String;
    .end local v34    # "reenablePkg$iterator":Ljava/util/Iterator;
    .restart local v36    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :cond_44
    const/16 v26, 0x0

    .line 7798
    .local v26, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7799
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "RCPDataSettings"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7800
    invoke-virtual/range {v36 .. v36}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .end local v26    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local v19, "key$iterator":Ljava/util/Iterator;
    :goto_f
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_46

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 7801
    .local v18, "key":Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/List;

    .line 7802
    .local v26, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string/jumbo v45, "provider"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7803
    const-string/jumbo v45, "name"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7804
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "pair$iterator":Ljava/util/Iterator;
    :goto_10
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_45

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/Pair;

    .line 7805
    .local v24, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v45, "property"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7806
    const-string/jumbo v46, "name"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Ljava/lang/String;

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v46

    move-object/from16 v3, v45

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7807
    const-string/jumbo v46, "value"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Ljava/lang/String;

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v46

    move-object/from16 v3, v45

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7808
    const-string/jumbo v45, "property"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_10

    .line 7810
    .end local v24    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_45
    const-string/jumbo v45, "provider"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_f

    .line 7812
    .end local v18    # "key":Ljava/lang/String;
    .end local v25    # "pair$iterator":Ljava/util/Iterator;
    .end local v26    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_46
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_b

    .line 7816
    .end local v19    # "key$iterator":Ljava/util/Iterator;
    :cond_47
    const/16 v26, 0x0

    .line 7817
    .local v26, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7818
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "RCPAllowChangeDataSettings"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7819
    invoke-virtual/range {v36 .. v36}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .end local v26    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v19    # "key$iterator":Ljava/util/Iterator;
    :goto_11
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_49

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 7820
    .restart local v18    # "key":Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/List;

    .line 7821
    .local v26, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string/jumbo v45, "provider"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7822
    const-string/jumbo v45, "name"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7823
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25    # "pair$iterator":Ljava/util/Iterator;
    :goto_12
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_48

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/Pair;

    .line 7824
    .restart local v24    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v45, "property"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7825
    const-string/jumbo v46, "name"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Ljava/lang/String;

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v46

    move-object/from16 v3, v45

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7826
    const-string/jumbo v46, "value"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Ljava/lang/String;

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v46

    move-object/from16 v3, v45

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7827
    const-string/jumbo v45, "property"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_12

    .line 7829
    .end local v24    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_48
    const-string/jumbo v45, "provider"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_11

    .line 7831
    .end local v18    # "key":Ljava/lang/String;
    .end local v25    # "pair$iterator":Ljava/util/Iterator;
    .end local v26    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_49
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_c

    .line 7835
    .end local v19    # "key$iterator":Ljava/util/Iterator;
    :cond_4a
    const/16 v26, 0x0

    .line 7836
    .local v26, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7837
    const-string/jumbo v45, "name"

    const-string/jumbo v46, "RCPNotifSettings"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7838
    invoke-virtual/range {v36 .. v36}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .end local v26    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v19    # "key$iterator":Ljava/util/Iterator;
    :goto_13
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_4c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 7839
    .restart local v18    # "key":Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/List;

    .line 7840
    .local v26, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string/jumbo v45, "package"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7841
    const-string/jumbo v45, "name"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7842
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25    # "pair$iterator":Ljava/util/Iterator;
    :goto_14
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_4b

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/Pair;

    .line 7843
    .restart local v24    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v45, "property"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7844
    const-string/jumbo v46, "name"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Ljava/lang/String;

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v46

    move-object/from16 v3, v45

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7845
    const-string/jumbo v46, "value"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Ljava/lang/String;

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v46

    move-object/from16 v3, v45

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7846
    const-string/jumbo v45, "property"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_14

    .line 7848
    .end local v24    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4b
    const-string/jumbo v45, "package"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_13

    .line 7850
    .end local v18    # "key":Ljava/lang/String;
    .end local v25    # "pair$iterator":Ljava/util/Iterator;
    .end local v26    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_4c
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_d

    .line 7855
    .end local v16    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "key$iterator":Ljava/util/Iterator;
    .end local v21    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v29    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v36    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .end local v37    # "strVal":Ljava/lang/String;
    .end local v43    # "type":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    :cond_4d
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get6()Ljava/util/List;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Ljava/util/List;->isEmpty()Z

    move-result v45

    if-nez v45, :cond_4f

    .line 7856
    const-string/jumbo v45, "knoxCore"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7857
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get6()Ljava/util/List;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "corePkg$iterator":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_4e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 7858
    .local v9, "corePkg":Ljava/lang/String;
    const-string/jumbo v45, "package"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7859
    const-string/jumbo v45, "name"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7860
    const-string/jumbo v45, "package"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_15

    .line 7862
    .end local v9    # "corePkg":Ljava/lang/String;
    :cond_4e
    const-string/jumbo v45, "knoxCore"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7865
    .end local v10    # "corePkg$iterator":Ljava/util/Iterator;
    :cond_4f
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get13()Ljava/util/List;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Ljava/util/List;->isEmpty()Z

    move-result v45

    if-nez v45, :cond_51

    .line 7866
    const-string/jumbo v45, "BadgePolicy"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7867
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get13()Ljava/util/List;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "badgePolicylist$iterator":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_50

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 7868
    .local v6, "badgePolicylist":Ljava/lang/String;
    const-string/jumbo v45, "/"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v42

    .line 7869
    .local v42, "temp":[Ljava/lang/String;
    const-string/jumbo v45, "policy"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7870
    const-string/jumbo v45, "name"

    const/16 v46, 0x0

    aget-object v46, v42, v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7871
    const-string/jumbo v45, "value"

    const/16 v46, 0x1

    aget-object v46, v42, v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7872
    const-string/jumbo v45, "policy"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_16

    .line 7874
    .end local v6    # "badgePolicylist":Ljava/lang/String;
    .end local v42    # "temp":[Ljava/lang/String;
    :cond_50
    const-string/jumbo v45, "BadgePolicy"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7876
    .end local v7    # "badgePolicylist$iterator":Ljava/util/Iterator;
    :cond_51
    const-string/jumbo v45, "table"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7878
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 7879
    invoke-virtual/range {v39 .. v39}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 7881
    :try_start_4
    invoke-virtual/range {v39 .. v39}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 7885
    :goto_17
    :try_start_5
    invoke-virtual/range {v39 .. v39}, Ljava/io/FileOutputStream;->close()V

    move-object/from16 v38, v39

    .end local v39    # "stream":Ljava/io/FileOutputStream;
    .local v38, "stream":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 7882
    .end local v38    # "stream":Ljava/io/FileOutputStream;
    .restart local v39    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v13

    .line 7883
    .restart local v13    # "e":Ljava/io/IOException;
    const-string/jumbo v45, "MumXmlDataParser"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v47, "Error in Write to XML sync FD "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_17

    .line 7891
    .end local v8    # "booleanVal":Ljava/lang/Boolean;
    .end local v17    # "intVal":I
    .end local v23    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v39    # "stream":Ljava/io/FileOutputStream;
    .end local v44    # "type$iterator":Ljava/util/Iterator;
    :catch_2
    move-exception v14

    .local v14, "ex":Ljava/io/IOException;
    goto/16 :goto_4

    .line 7886
    .end local v13    # "e":Ljava/io/IOException;
    .end local v14    # "ex":Ljava/io/IOException;
    .local v38, "stream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v13

    .restart local v13    # "e":Ljava/io/IOException;
    goto/16 :goto_3
.end method
