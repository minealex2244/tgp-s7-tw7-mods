.class public Lcom/android/launcher3/common/bnr/extractor/LCExtractor;
.super Ljava/lang/Object;
.source "LCExtractor.java"


# static fields
.field private static final FILE_NAME_APPS:Ljava/lang/String; = "default_application_order"

.field private static final FILE_NAME_WORKSPACE:Ljava/lang/String; = "default_workspace"

.field private static final HOMEDATA_DIR:Ljava/lang/String; = ".homedata"

.field private static final HOMESCREEN_DIR:Ljava/lang/String; = ".homescreen"

.field public static final LCEXTRACTOR_APPS_SOURCE:Ljava/lang/String; = "LCExtractorApps"

.field public static final LCEXTRACTOR_HOME_SOURCE:Ljava/lang/String; = "LCExtractorHome"

.field public static final SD_DIRECTORY:Ljava/lang/String; = "/LCExtractor"

.field private static final TAG:Ljava/lang/String; = "Launcher.Extractor"

.field public static final strTab:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsDb:Z

.field private mIsEasyMode:Z

.field private mIsHomeOnly:Z

.field private mPossibleToExtract:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "    "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "        "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "            "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "                "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "                    "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "                        "

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->strTab:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v7, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mPossibleToExtract:Z

    .line 67
    iput-boolean v7, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mIsHomeOnly:Z

    .line 68
    iput-boolean v7, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mIsEasyMode:Z

    .line 70
    iput-boolean v7, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mIsDb:Z

    .line 73
    iput-object p1, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mContext:Landroid/content/Context;

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v1, "needPermissionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/launcher3/util/PermissionUtils;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    invoke-static {v4, v5, v1}, Lcom/android/launcher3/util/PermissionUtils;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v3

    .line 80
    .local v3, "value":I
    const-string v4, "Launcher.Extractor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasSelfPermission : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    if-eqz v3, :cond_1

    .line 82
    const-string v4, "Launcher.Extractor"

    const-string v5, "No storage permission in TouchWizHome"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, ".homescreen"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 89
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, ".homedata"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 91
    const-string v4, "Launcher.Extractor"

    const-string v5, "startLauncherExtractor() failed, device doesn\'t have secret directory"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :cond_2
    iput-boolean v8, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mIsDb:Z

    .line 97
    :cond_3
    iput-boolean v8, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mPossibleToExtract:Z

    .line 100
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-virtual {p1, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 101
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 102
    const-string v4, "home_only_mode"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mIsHomeOnly:Z

    .line 105
    :cond_4
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    const-string v4, "easy_mode"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mIsEasyMode:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/bnr/extractor/LCExtractor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/bnr/extractor/LCExtractor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->extractData()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/bnr/extractor/LCExtractor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/bnr/extractor/LCExtractor;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private extractData()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 195
    .local v5, "sdDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 196
    .local v2, "dataDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 197
    const-string v1, "//data//com.sec.android.app.launcher"

    .line 198
    .local v1, "curDataPath":Ljava/lang/String;
    const-string v4, "//.homedata//"

    .line 199
    .local v4, "extDataPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 200
    .local v0, "curData":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    .local v3, "extData":Ljava/io/File;
    invoke-direct {p0, v3}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->recusiveDeleteData(Ljava/io/File;)V

    .line 202
    invoke-direct {p0, v0, v3}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->recusiveCopyData(Ljava/io/File;Ljava/io/File;)V

    .line 206
    .end local v0    # "curData":Ljava/io/File;
    .end local v1    # "curDataPath":Ljava/lang/String;
    .end local v3    # "extData":Ljava/io/File;
    .end local v4    # "extDataPath":Ljava/lang/String;
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v6, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mContext:Landroid/content/Context;

    const-string v7, "sd card can\'t write!"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static getStrTab(IZ)Ljava/lang/String;
    .locals 2
    .param p0, "depth"    # I
    .param p1, "launcherPrefix"    # Z

    .prologue
    .line 187
    if-eqz p1, :cond_0

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->strTab:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "launcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->strTab:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method private recusiveCopyData(Ljava/io/File;Ljava/io/File;)V
    .locals 11
    .param p1, "source"    # Ljava/io/File;
    .param p2, "target"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 218
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 219
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    move-result v8

    if-nez v8, :cond_0

    .line 220
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot create dir "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 223
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "children":[Ljava/lang/String;
    array-length v8, v2

    :goto_0
    if-ge v7, v8, :cond_4

    aget-object v0, v2, v7

    .line 225
    .local v0, "aChildren":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v9, v10}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->recusiveCopyData(Ljava/io/File;Ljava/io/File;)V

    .line 224
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 229
    .end local v0    # "aChildren":Ljava/lang/String;
    .end local v2    # "children":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 230
    .local v3, "directory":Ljava/io/File;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v8

    if-nez v8, :cond_2

    .line 231
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot create dir "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 234
    :cond_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 235
    .local v4, "in":Ljava/io/InputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 238
    .local v6, "out":Ljava/io/OutputStream;
    const/16 v8, 0x800

    new-array v1, v8, [B

    .line 240
    .local v1, "buf":[B
    :goto_1
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    if-lez v5, :cond_3

    .line 241
    invoke-virtual {v6, v1, v7, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 243
    :cond_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 244
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 246
    .end local v1    # "buf":[B
    .end local v3    # "directory":Ljava/io/File;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "len":I
    .end local v6    # "out":Ljava/io/OutputStream;
    :cond_4
    return-void
.end method

.method private recusiveDeleteData(Ljava/io/File;)V
    .locals 4
    .param p1, "target"    # Ljava/io/File;

    .prologue
    .line 209
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 211
    .local v0, "aChildren":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->recusiveDeleteData(Ljava/io/File;)V

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    .end local v0    # "aChildren":Ljava/io/File;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 215
    return-void
.end method


# virtual methods
.method public getCanExtract()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mPossibleToExtract:Z

    return v0
.end method

.method public startExtractLayout()V
    .locals 13

    .prologue
    const/4 v8, 0x0

    .line 115
    iget-boolean v9, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mIsDb:Z

    if-eqz v9, :cond_1

    .line 116
    new-instance v9, Lcom/android/launcher3/common/bnr/extractor/LCExtractor$1;

    invoke-direct {v9, p0}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor$1;-><init>(Lcom/android/launcher3/common/bnr/extractor/LCExtractor;)V

    sget-object v10, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v8, v8, [Ljava/lang/Void;

    .line 127
    invoke-virtual {v9, v10, v8}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-static {}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getInstance()Lcom/android/launcher3/common/bnr/LauncherBnrHelper;

    move-result-object v0

    .line 134
    .local v0, "bnrHelper":Lcom/android/launcher3/common/bnr/LauncherBnrHelper;
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v9, "default_workspace"

    invoke-direct {v5, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 135
    .local v5, "fileNameWorkspace":Ljava/lang/StringBuffer;
    iget-boolean v9, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mIsEasyMode:Z

    if-eqz v9, :cond_7

    .line 136
    const-string v9, "_easy"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    :cond_2
    :goto_1
    const-string v9, ".xml"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v9, "default_application_order"

    invoke-direct {v4, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 144
    .local v4, "fileNameApps":Ljava/lang/StringBuffer;
    iget-boolean v9, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mIsEasyMode:Z

    if-eqz v9, :cond_3

    .line 145
    const-string v9, "_easy"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    :cond_3
    const-string v9, ".xml"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 150
    .local v7, "toastMsg":Ljava/lang/StringBuffer;
    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 151
    iget-boolean v9, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mIsEasyMode:Z

    if-nez v9, :cond_4

    iget-boolean v9, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mIsHomeOnly:Z

    if-nez v9, :cond_5

    .line 152
    :cond_4
    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 154
    :cond_5
    const-string v9, " is creating..."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    iget-object v9, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 158
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "/LCExtractor"

    invoke-direct {v1, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 159
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 160
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "fileList":[Ljava/lang/String;
    if-eqz v3, :cond_9

    .line 162
    const-string v9, "Launcher.Extractor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dir fileList.length : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    array-length v9, v3

    :goto_2
    if-ge v8, v9, :cond_9

    aget-object v6, v3, v8

    .line 164
    .local v6, "filename":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/LCExtractor"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x2f

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_6

    .line 167
    const-string v10, "Launcher.Extractor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", delete failed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 137
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileList":[Ljava/lang/String;
    .end local v4    # "fileNameApps":Ljava/lang/StringBuffer;
    .end local v6    # "filename":Ljava/lang/String;
    .end local v7    # "toastMsg":Ljava/lang/StringBuffer;
    :cond_7
    iget-boolean v9, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mIsHomeOnly:Z

    if-eqz v9, :cond_2

    .line 138
    const-string v9, "_homeonly"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 172
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v4    # "fileNameApps":Ljava/lang/StringBuffer;
    .restart local v7    # "toastMsg":Ljava/lang/StringBuffer;
    :cond_8
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 175
    :cond_9
    iget-object v8, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "LCExtractorHome"

    invoke-virtual {v0, v8, v9, v10}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->extractXML(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 176
    const-string v8, "Launcher.Extractor"

    const-string v9, "makeDefaultWorkspace() is failed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_a
    iget-boolean v8, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mIsEasyMode:Z

    if-nez v8, :cond_b

    iget-boolean v8, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mIsHomeOnly:Z

    if-nez v8, :cond_0

    .line 180
    :cond_b
    iget-object v8, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "LCExtractorApps"

    invoke-virtual {v0, v8, v9, v10}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->extractXML(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 181
    const-string v8, "Launcher.Extractor"

    const-string v9, "makeDefaultAppOrder() is failed."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
