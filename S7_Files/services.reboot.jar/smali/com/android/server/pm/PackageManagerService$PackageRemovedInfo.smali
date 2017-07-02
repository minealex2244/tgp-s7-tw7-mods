.class Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageRemovedInfo"
.end annotation


# instance fields
.field appearedChildPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;",
            ">;"
        }
    .end annotation
.end field

.field args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field dataRemoved:Z

.field isRemovedPackageSystemUpdate:Z

.field isUpdate:Z

.field origUsers:[I

.field removedAppId:I

.field removedChildPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;",
            ">;"
        }
    .end annotation
.end field

.field removedForAllUsers:Z

.field removedPackage:Ljava/lang/String;

.field removedUsers:[I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field uid:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 20909
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20911
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    .line 20912
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    .line 20914
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    .line 20915
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    .line 20920
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 20909
    return-void
.end method

.method private sendPackageRemovedBroadcastInternal(Z)V
    .locals 1
    .param p1, "killApp"    # Z

    .prologue
    .line 20984
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendPackageRemovedBroadcastInternal(ZLandroid/content/IIntentReceiver;)V

    .line 20983
    return-void
.end method

.method private sendPackageRemovedBroadcastInternal(ZLandroid/content/IIntentReceiver;)V
    .locals 8
    .param p1, "killApp"    # Z
    .param p2, "finishReceiver"    # Landroid/content/IIntentReceiver;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 20987
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 20988
    .local v3, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "android.intent.extra.UID"

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    :goto_0
    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20989
    const-string/jumbo v0, "android.intent.extra.DATA_REMOVED"

    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->dataRemoved:Z

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20990
    const-string/jumbo v2, "android.intent.extra.DONT_KILL_APP"

    if-eqz p1, :cond_5

    move v0, v4

    :goto_1
    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20991
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isUpdate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    if-eqz v0, :cond_1

    .line 20992
    :cond_0
    const-string/jumbo v0, "android.intent.extra.REPLACING"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20994
    :cond_1
    const-string/jumbo v0, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedForAllUsers:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20995
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 20996
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    .line 20997
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    move-object v6, p2

    .line 20996
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 20998
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->dataRemoved:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    if-eqz v0, :cond_6

    .line 21003
    :cond_2
    :goto_2
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    if-ltz v0, :cond_3

    .line 21004
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "android.intent.action.UID_REMOVED"

    .line 21005
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    move-object v2, v5

    move-object v6, v5

    .line 21004
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 20986
    :cond_3
    return-void

    .line 20988
    :cond_4
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    goto :goto_0

    :cond_5
    move v0, v1

    .line 20990
    goto :goto_1

    .line 20999
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 21000
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    move-object v6, v5

    .line 20999
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    goto :goto_2
.end method

.method private sendSystemPackageUpdatedBroadcastsInternal()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 20971
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 20972
    .local v3, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "android.intent.extra.UID"

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    :goto_0
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20973
    const-string/jumbo v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20974
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 20976
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 20978
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v7, "android.intent.action.MY_PACKAGE_REPLACED"

    .line 20979
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    move-object v8, v5

    move-object v9, v5

    move v10, v4

    move-object v12, v5

    move-object v13, v5

    .line 20978
    invoke-virtual/range {v6 .. v13}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 20970
    return-void

    .line 20972
    :cond_0
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    goto :goto_0
.end method


# virtual methods
.method sendPackageRemovedBroadcasts(Z)V
    .locals 4
    .param p1, "killApp"    # Z

    .prologue
    .line 20925
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendPackageRemovedBroadcastInternal(Z)V

    .line 20926
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 20927
    .local v0, "childCount":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 20928
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .line 20929
    .local v1, "childInfo":Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    invoke-direct {v1, p1}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendPackageRemovedBroadcastInternal(Z)V

    .line 20927
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 20926
    .end local v0    # "childCount":I
    .end local v1    # "childInfo":Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    .end local v2    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "childCount":I
    goto :goto_0

    .line 20924
    .restart local v2    # "i":I
    :cond_1
    return-void
.end method

.method sendPackageRemovedBroadcasts(ZLandroid/content/IIntentReceiver;)V
    .locals 4
    .param p1, "killApp"    # Z
    .param p2, "finishReceiver"    # Landroid/content/IIntentReceiver;

    .prologue
    .line 20935
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendPackageRemovedBroadcastInternal(ZLandroid/content/IIntentReceiver;)V

    .line 20936
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 20937
    .local v0, "childCount":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 20938
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .line 20939
    .local v1, "childInfo":Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    invoke-direct {v1, p1}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendPackageRemovedBroadcastInternal(Z)V

    .line 20937
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 20936
    .end local v0    # "childCount":I
    .end local v1    # "childInfo":Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    .end local v2    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "childCount":I
    goto :goto_0

    .line 20934
    .restart local v2    # "i":I
    :cond_1
    return-void
.end method

.method sendSystemPackageAppearedBroadcasts()V
    .locals 11

    .prologue
    .line 20959
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->appearedChildPackages:Landroid/util/ArrayMap;

    if-eqz v4, :cond_0

    .line 20960
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->appearedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 20961
    .local v2, "packageCount":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 20962
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->appearedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    .line 20963
    .local v1, "installedInfo":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    const/4 v4, 0x0

    array-length v6, v5

    :goto_2
    if-ge v4, v6, :cond_1

    aget v3, v5, v4

    .line 20964
    .local v3, "userId":I
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    .line 20965
    iget v9, v1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    .line 20964
    const/4 v10, 0x1

    invoke-static {v7, v8, v10, v9, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap48(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZII)V

    .line 20963
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 20960
    .end local v0    # "i":I
    .end local v1    # "installedInfo":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    .end local v2    # "packageCount":I
    .end local v3    # "userId":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "packageCount":I
    goto :goto_0

    .line 20961
    .restart local v0    # "i":I
    .restart local v1    # "installedInfo":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 20958
    .end local v1    # "installedInfo":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    :cond_2
    return-void
.end method

.method sendSystemPackageUpdatedBroadcasts()V
    .locals 4

    .prologue
    .line 20945
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    if-eqz v3, :cond_2

    .line 20946
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendSystemPackageUpdatedBroadcastsInternal()V

    .line 20947
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    if-eqz v3, :cond_1

    .line 20948
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 20949
    .local v0, "childCount":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 20950
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .line 20951
    .local v1, "childInfo":Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    iget-boolean v3, v1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    if-eqz v3, :cond_0

    .line 20952
    invoke-direct {v1}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendSystemPackageUpdatedBroadcastsInternal()V

    .line 20949
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 20948
    .end local v0    # "childCount":I
    .end local v1    # "childInfo":Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    .end local v2    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "childCount":I
    goto :goto_0

    .line 20944
    .end local v0    # "childCount":I
    :cond_2
    return-void
.end method
