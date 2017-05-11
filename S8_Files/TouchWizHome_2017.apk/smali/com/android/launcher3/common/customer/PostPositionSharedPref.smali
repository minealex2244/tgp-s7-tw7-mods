.class public Lcom/android/launcher3/common/customer/PostPositionSharedPref;
.super Ljava/lang/Object;
.source "PostPositionSharedPref.java"


# static fields
.field private static final DISABLED:I = -0x1

.field public static final FAKE_ID:J = 0x1869eL

.field public static final PREFERENCES:Ljava/lang/String; = "com.sec.android.app.launcher.prefs.PostPosition"

.field private static final PREFS_APPS_AUTO_FOLDER_NAME:Ljava/lang/String; = "_Apps_AutoFolderingFolderName"

.field private static final PREFS_APPS_FOLDER_ID:Ljava/lang/String; = "_Apps_FolderId"

.field private static final PREFS_APPS_FOLDER_NAME:Ljava/lang/String; = "_Apps_FolderName"

.field private static final PREFS_APPS_FOLDER_READY_ID:Ljava/lang/String; = "_Apps_FolderReadyId"

.field private static final PREFS_APPS_INSTALLER_PACKAGE:Ljava/lang/String; = "Apps_Installer_Package"

.field private static final PREFS_APPS_PRELOADED_FOLDER_ID:Ljava/lang/String; = "_Apps_PreloadedFolderId"

.field private static final PREFS_HOME_AUTO_FOLDER_NAME:Ljava/lang/String; = "_Home_AutoFolderingFolderName"

.field private static final PREFS_HOME_FOLDER_ID:Ljava/lang/String; = "_Home_FolderId"

.field private static final PREFS_HOME_FOLDER_NAME:Ljava/lang/String; = "_Home_FolderName"

.field private static final PREFS_HOME_FOLDER_READY_ID:Ljava/lang/String; = "_Home_FolderReadyId"

.field private static final PREFS_HOME_INSTALLER_PACKAGE:Ljava/lang/String; = "Home_Installer_Package"

.field private static final PREFS_HOME_PRELOADED_FOLDER_ID:Ljava/lang/String; = "_Home_PreloadedFolderId"

.field public static final PREFS_POST_POSITION_ENABLED:Ljava/lang/String; = "PostPostionEnabled"

.field public static final REMOVED:J = 0x1869fL

.field private static final TAG:Ljava/lang/String; = "PostPositionSharedPref"


# instance fields
.field private mContainer:I

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method private getFolderKey(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "foldername"    # Ljava/lang/String;
    .param p2, "isReadyId"    # Z

    .prologue
    .line 160
    iget v0, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContainer:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_1

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v0, "_Home_FolderReadyId"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    :goto_1
    return-object v0

    .line 161
    :cond_0
    const-string v0, "_Home_FolderId"

    goto :goto_0

    .line 164
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_2

    const-string v0, "_Apps_FolderReadyId"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "_Apps_FolderId"

    goto :goto_2
.end method


# virtual methods
.method public getContainer()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContainer:I

    return v0
.end method

.method public getFolderId(Ljava/lang/String;Z)J
    .locals 4
    .param p1, "foldername"    # Ljava/lang/String;
    .param p2, "isReadyId"    # Z

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getFolderKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.launcher.prefs.PostPosition"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public getFolderNameId(J)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContainer:I

    const/16 v3, -0x64

    if-ne v1, v3, :cond_0

    const-string v1, "_Home_FolderName"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.launcher.prefs.PostPosition"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 173
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    const-string v1, "_Apps_FolderName"

    goto :goto_0
.end method

.method getPrefsAppsAutoFolderName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.app.launcher.prefs.PostPosition"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "_Apps_AutoFolderingFolderName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPrefsAppsInstallerPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.app.launcher.prefs.PostPosition"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Apps_Installer_Package"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPrefsHomeAutoFolderName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.app.launcher.prefs.PostPosition"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "_Home_AutoFolderingFolderName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPrefsHomeInstallerPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.app.launcher.prefs.PostPosition"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Home_Installer_Package"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreloadedFolderId(Ljava/lang/String;)J
    .locals 4
    .param p1, "foldername"    # Ljava/lang/String;

    .prologue
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Home_PreloadedFolderId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "pref_key":Ljava/lang/String;
    iget v1, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContainer:I

    const/16 v2, -0x66

    if-ne v1, v2, :cond_0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Apps_PreloadedFolderId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.launcher.prefs.PostPosition"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public getPreloadedFolderNameId(J)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContainer:I

    const/16 v3, -0x64

    if-ne v1, v3, :cond_0

    const-string v1, "_Home_PreloadedFolderId"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.launcher.prefs.PostPosition"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 91
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    const-string v1, "_Apps_PreloadedFolderId"

    goto :goto_0
.end method

.method public isEnabled()J
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.app.launcher.prefs.PostPosition"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PostPostionEnabled"

    const-wide/16 v2, -0x1

    .line 78
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public removeFolderId(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "foldername"    # Ljava/lang/String;
    .param p2, "isReadyId"    # Z

    .prologue
    .line 192
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getFolderKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.android.app.launcher.prefs.PostPosition"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 195
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 196
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 198
    const-string v2, "PostPositionSharedPref"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeFolderId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method

.method public removePreloadedFolderId(Ljava/lang/String;)V
    .locals 5
    .param p1, "foldername"    # Ljava/lang/String;

    .prologue
    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_Home_PreloadedFolderId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "pref_key":Ljava/lang/String;
    iget v2, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContainer:I

    const/16 v3, -0x66

    if-ne v2, v3, :cond_0

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_Apps_PreloadedFolderId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.android.app.launcher.prefs.PostPosition"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 152
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 155
    const-string v2, "PostPositionSharedPref"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removePreloadedFolderId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method public setContainer(I)V
    .locals 0
    .param p1, "container"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContainer:I

    .line 64
    return-void
.end method

.method public setEnabled(Z)V
    .locals 6
    .param p1, "value"    # Z

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.android.app.launcher.prefs.PostPosition"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "PostPostionEnabled"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    int-to-long v4, v1

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    return-void
.end method

.method public writeAutoFolderingInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "foldername"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 112
    iget v3, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContainer:I

    const/16 v4, -0x66

    if-ne v3, v4, :cond_0

    .line 113
    const-string v2, "_Apps_AutoFolderingFolderName"

    .line 114
    .local v2, "pref_key":Ljava/lang/String;
    const-string v1, "Apps_Installer_Package"

    .line 120
    .local v1, "installer_pref_key":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContext:Landroid/content/Context;

    const-string v4, "com.sec.android.app.launcher.prefs.PostPosition"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 122
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 125
    const-string v3, "PostPositionSharedPref"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeAutoFolderingInfo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContainer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void

    .line 116
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "installer_pref_key":Ljava/lang/String;
    .end local v2    # "pref_key":Ljava/lang/String;
    :cond_0
    const-string v2, "_Home_AutoFolderingFolderName"

    .line 117
    .restart local v2    # "pref_key":Ljava/lang/String;
    const-string v1, "Home_Installer_Package"

    .restart local v1    # "installer_pref_key":Ljava/lang/String;
    goto :goto_0
.end method

.method public writeFolderId(Ljava/lang/String;JZ)V
    .locals 6
    .param p1, "foldername"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "isReadyId"    # Z

    .prologue
    .line 178
    invoke-direct {p0, p1, p4}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getFolderKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.android.app.launcher.prefs.PostPosition"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 181
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 182
    if-nez p4, :cond_0

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContainer:I

    const/16 v4, -0x64

    if-ne v2, v4, :cond_1

    const-string v2, "_Home_FolderName"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 187
    const-string v2, "PostPositionSharedPref"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFolderId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void

    .line 183
    :cond_1
    const-string v2, "_Apps_FolderName"

    goto :goto_0
.end method

.method public writePreloadedFolderId(Ljava/lang/String;J)V
    .locals 6
    .param p1, "foldername"    # Ljava/lang/String;
    .param p2, "id"    # J

    .prologue
    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_Home_PreloadedFolderId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "pref_key":Ljava/lang/String;
    iget v2, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContainer:I

    const/16 v3, -0x66

    if-ne v2, v3, :cond_0

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_Apps_PreloadedFolderId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.android.app.launcher.prefs.PostPosition"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 102
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 105
    const-string v2, "PostPositionSharedPref"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writePreloadedFolderId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContainer:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method
