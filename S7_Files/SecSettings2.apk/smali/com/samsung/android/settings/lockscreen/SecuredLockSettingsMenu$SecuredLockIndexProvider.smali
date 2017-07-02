.class Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SecuredLockSettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecuredLockIndexProvider"
.end annotation


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

.field private mUser:Landroid/os/UserManager;

.field private mXmlResId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 783
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    .line 784
    const-class v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mClassName:Ljava/lang/String;

    .line 783
    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 850
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 851
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get0()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 853
    .local v0, "Locktype":I
    const/high16 v3, 0x10000

    if-eq v0, v3, :cond_0

    .line 854
    const/high16 v3, 0x90000

    if-eq v0, v3, :cond_0

    .line 855
    const v3, 0x9100

    if-eq v0, v3, :cond_0

    .line 856
    const-string/jumbo v3, "visiblepattern"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    :cond_0
    invoke-static {p1}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 863
    :goto_0
    const-string/jumbo v3, "DeviceLockTime"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 864
    .local v1, "isDeviceLockTime":Z
    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPowerKey()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 868
    :goto_1
    const-string/jumbo v3, "user"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mUser:Landroid/os/UserManager;

    .line 869
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mUser:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mUser:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 870
    const-string/jumbo v3, "auto_factory_reset"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    :cond_1
    return-object v2

    .line 860
    .end local v1    # "isDeviceLockTime":Z
    :cond_2
    const-string/jumbo v3, "lock_screen_vibration"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 865
    .restart local v1    # "isDeviceLockTime":Z
    :cond_3
    const-string/jumbo v3, "power_button_instantly_locks"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 811
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 812
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 813
    .local v6, "res":Landroid/content/res/Resources;
    const v5, 0x7f0b047f

    .line 814
    .local v5, "parentTitle":I
    const v9, 0x7f0b085b

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 816
    .local v8, "screenTitle":Ljava/lang/String;
    const/4 v2, 0x0

    .line 818
    .local v2, "data":Lcom/android/settings/search/SearchIndexableRaw;
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 820
    .local v4, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get0()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 821
    const-class v9, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    invoke-static {p1, v4, v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-wrap0(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    .line 822
    .local v1, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v3, 0x0

    .end local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 823
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    .line 824
    .local v0, "agent":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 825
    .local v2, "data":Lcom/android/settings/search/SearchIndexableRaw;
    iget-object v9, v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    iput-object v9, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 826
    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 827
    const v9, 0x7f0b047f

    iput v9, v2, Lcom/android/settings/search/SearchIndexableRaw;->parentTitleRes:I

    .line 828
    const-string/jumbo v9, "trust_agent"

    iput-object v9, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 829
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 832
    .end local v0    # "agent":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    :cond_0
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 833
    .restart local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v9, "lock_after_timeout"

    iput-object v9, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 834
    const-string/jumbo v9, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 835
    const-string/jumbo v9, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 834
    if-eqz v9, :cond_3

    .line 836
    :cond_1
    const v9, 0x7f0b086e

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 840
    :goto_1
    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 842
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    .end local v1    # "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    .end local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    .end local v3    # "i":I
    :cond_2
    return-object v7

    .line 838
    .restart local v1    # "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    .restart local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    .restart local v3    # "i":I
    :cond_3
    const v9, 0x7f0b1133

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    goto :goto_1
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 789
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    .line 791
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 794
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get0()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_0

    .line 795
    const v2, 0x7f0800fb

    iput v2, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mXmlResId:I

    .line 800
    :goto_0
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 801
    .local v1, "sir":Landroid/provider/SearchIndexableResource;
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mClassName:Ljava/lang/String;

    iput-object v2, v1, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 802
    iget v2, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mXmlResId:I

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 803
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 804
    return-object v0

    .line 797
    .end local v1    # "sir":Landroid/provider/SearchIndexableResource;
    :cond_0
    const v2, 0x7f0800f3

    iput v2, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mXmlResId:I

    goto :goto_0
.end method
