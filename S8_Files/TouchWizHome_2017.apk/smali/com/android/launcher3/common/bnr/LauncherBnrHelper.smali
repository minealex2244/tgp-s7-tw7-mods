.class public Lcom/android/launcher3/common/bnr/LauncherBnrHelper;
.super Ljava/lang/Object;
.source "LauncherBnrHelper.java"


# static fields
.field public static final BNR_ERROR_CODE_INVALID_DATA:I = 0x3

.field public static final BNR_ERROR_CODE_STORAGE_FULL:I = 0x2

.field public static final BNR_ERROR_CODE_SUCCESS:I = 0x0

.field public static final BNR_ERROR_CODE_UNKNOWN:I = 0x1

.field public static final BNR_RESULT_FAIL:I = 0x1

.field public static final BNR_RESULT_OK:I = 0x0

.field private static final CHANGED_COMPONENT_LIST_XML:Ljava/lang/String; = "/change_native_packages.xml"

.field public static final HOMESCREEN_BACKUP_EXML:Ljava/lang/String; = "/homescreen.exml"

.field private static final TAG:Ljava/lang/String; = "LauncherBnrHelper"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_WIDGET:Ljava/lang/String; = "widget"

.field private static sCallBack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private static sChangedComponent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static sChangedWidgetComponent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/launcher3/common/bnr/LauncherBnrHelper;

.field public static sIsEasyMode:Z

.field public static sIsHomeOnly:Z


# instance fields
.field private mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

.field private mRestoredTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    sput-boolean v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    .line 76
    sput-boolean v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedComponent:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedWidgetComponent:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    return-void
.end method

.method private addApacheLicense(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 1
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 903
    const-string v0, "\n\n"

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 904
    const-string v0, "\nCopyright (C) 2016 The Android Open Source Project\nLicensed under the Apache License, Version 2.0 (the \"License\");\nyou may not use this file except in compliance with the License.\nYou may obtain a copy of the License at\n\n  http://www.apache.org/licenses/LICENSE-2.0\n\nUnless required by applicable law or agreed to in writing, software\ndistributed under the License is distributed on an \"AS IS\" BASIS,\nWITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\nSee the License for the specific language governing permissions and\nlimitations under the License.\n"

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 914
    return-void
.end method

.method private addChangedComponent(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "before"    # Landroid/content/ComponentName;
    .param p3, "after"    # Landroid/content/ComponentName;

    .prologue
    .line 758
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    invoke-static {p1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v2

    .line 764
    .local v2, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v1

    .line 766
    .local v1, "beforeMatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    .line 767
    .local v0, "afterMatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 768
    sget-object v3, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedComponent:Ljava/util/HashMap;

    invoke-virtual {v3, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    const-string v3, "LauncherBnrHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addChangedComponent before = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " after = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 773
    sget-object v3, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedComponent:Ljava/util/HashMap;

    invoke-virtual {v3, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    const-string v3, "LauncherBnrHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addChangedComponent before = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " after = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private addChangedWidgetComponent(Ljava/util/List;Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 4
    .param p2, "before"    # Landroid/content/ComponentName;
    .param p3, "after"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    .prologue
    .line 780
    .local p1, "widgetsAll":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 785
    .local v0, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 786
    sget-object v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedWidgetComponent:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    const-string v1, "LauncherBnrHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addChangedWidgetComponent before = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " after = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 789
    :cond_3
    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 790
    sget-object v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedWidgetComponent:Ljava/util/HashMap;

    invoke-virtual {v1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    const-string v1, "LauncherBnrHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addChangedWidgetComponent before = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " after = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private backupCategory(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 9
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 461
    const-string v6, "\n"

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 462
    const-string v6, "category"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 464
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 465
    .local v2, "category":Ljava/lang/StringBuffer;
    sget-object v6, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 466
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 467
    sget-object v6, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;

    .line 468
    .local v0, "bnrCallBack":Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;
    invoke-interface {v0}, Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;->backupCategory()Ljava/lang/String;

    move-result-object v5

    .line 470
    .local v5, "subCategory":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 471
    if-lez v4, :cond_0

    .line 472
    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 474
    :cond_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 478
    .end local v0    # "bnrCallBack":Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;
    .end local v5    # "subCategory":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, "c":Ljava/lang/String;
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 480
    const-string v6, "category"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 482
    const-string v6, "LauncherBnrHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "backupCategory category : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 485
    iget-object v6, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v7, 0x1

    iput v7, v6, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 486
    iget-object v6, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v7, 0x3

    iput v7, v6, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 487
    const-string v6, "LauncherBnrHelper"

    const-string v7, "backupCategory category is empty"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_3
    return-void
.end method

.method private backupLayout(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "saveFile"    # Ljava/io/File;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener;

    .prologue
    .line 173
    const/4 v6, 0x0

    .line 174
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 176
    .local v9, "newFos":Ljava/io/OutputStream;
    :try_start_0
    new-instance v12, Ljava/io/StringWriter;

    invoke-direct {v12}, Ljava/io/StringWriter;-><init>()V

    .line 177
    .local v12, "writer":Ljava/io/StringWriter;
    new-instance v7, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Lcom/android/launcher3/common/bnr/LauncherBnrListener;->getEncryptStream(Ljava/io/FileOutputStream;)Ljava/io/OutputStream;

    move-result-object v9

    .line 181
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v11

    .line 183
    .local v11, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_2
    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 184
    const-string v13, "UTF-8"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 186
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->backupCategory(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    iget v13, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    if-nez v13, :cond_2

    .line 189
    sget-object v13, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;

    .line 190
    .local v3, "bnrCallBack":Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v3, v0, v11, v1, v14}, Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;->backupLayout(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    iget v14, v14, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 196
    .end local v3    # "bnrCallBack":Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    iget v13, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 197
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v14, 0x3

    iput v14, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 201
    :cond_2
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 202
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 213
    :goto_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    iget v13, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    if-nez v13, :cond_5

    .line 214
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v12}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 215
    .local v8, "in":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 218
    .local v2, "bis":Ljava/io/BufferedInputStream;
    const/16 v13, 0x400

    new-array v4, v13, [B

    .line 219
    .local v4, "buffer":[B
    :goto_1
    const/4 v13, 0x0

    const/16 v14, 0x400

    invoke-virtual {v2, v4, v13, v14}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v10

    .local v10, "readCount":I
    const/4 v13, -0x1

    if-eq v10, v13, :cond_5

    .line 220
    const/4 v13, 0x0

    invoke-virtual {v9, v4, v13, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 223
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "buffer":[B
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v10    # "readCount":I
    .end local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v13

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "writer":Ljava/io/StringWriter;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    move-object v5, v13

    .line 224
    .local v5, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v14, 0x1

    iput v14, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 225
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v14, 0x1

    iput v14, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 226
    const-string v13, "LauncherBnrHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bnr fail, occur exception : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 232
    if-eqz v9, :cond_3

    .line 233
    invoke-static {v9}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    .line 235
    :cond_3
    if-eqz v6, :cond_4

    .line 236
    invoke-static {v6}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    .line 239
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    return-void

    .line 203
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v12    # "writer":Ljava/io/StringWriter;
    :catch_1
    move-exception v5

    .line 204
    .local v5, "e":Ljava/lang/RuntimeException;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v14, 0x1

    iput v14, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 205
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v14, 0x1

    iput v14, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 206
    const-string v13, "LauncherBnrHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "RuntimeException while generate XML : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 223
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .end local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_2
    move-exception v13

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "writer":Ljava/io/StringWriter;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_5
    move-object v5, v13

    goto :goto_3

    .line 207
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v12    # "writer":Ljava/io/StringWriter;
    :catch_3
    move-exception v5

    .line 208
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v14, 0x1

    iput v14, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 209
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v14, 0x1

    iput v14, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 210
    const-string v13, "LauncherBnrHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error occured while generate XML : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    .line 223
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_4
    move-exception v13

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "writer":Ljava/io/StringWriter;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_6
    move-object v5, v13

    goto/16 :goto_3

    .line 232
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v12    # "writer":Ljava/io/StringWriter;
    :cond_5
    if-eqz v9, :cond_6

    .line 233
    invoke-static {v9}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    .line 235
    :cond_6
    if-eqz v7, :cond_a

    .line 236
    invoke-static {v7}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 227
    .end local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v12    # "writer":Ljava/io/StringWriter;
    :catch_5
    move-exception v5

    .line 228
    .restart local v5    # "e":Ljava/lang/Exception;
    :goto_7
    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v14, 0x1

    iput v14, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 229
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v14, 0x2

    iput v14, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 230
    const-string v13, "LauncherBnrHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bnr fail, occur exception : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 232
    if-eqz v9, :cond_7

    .line 233
    invoke-static {v9}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    .line 235
    :cond_7
    if-eqz v6, :cond_4

    .line 236
    invoke-static {v6}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    goto/16 :goto_4

    .line 232
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    :goto_8
    if-eqz v9, :cond_8

    .line 233
    invoke-static {v9}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    .line 235
    :cond_8
    if-eqz v6, :cond_9

    .line 236
    invoke-static {v6}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    :cond_9
    throw v13

    .line 232
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "writer":Ljava/io/StringWriter;
    :catchall_1
    move-exception v13

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 227
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v5

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 223
    .end local v12    # "writer":Ljava/io/StringWriter;
    :catch_7
    move-exception v13

    goto/16 :goto_2

    :catch_8
    move-exception v13

    goto :goto_6

    :catch_9
    move-exception v13

    goto/16 :goto_5

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v12    # "writer":Ljava/io/StringWriter;
    :cond_a
    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_4
.end method

.method private changeMode(Landroid/content/Context;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "toHomeOnly"    # Z

    .prologue
    .line 674
    const-string v2, "LauncherBnrHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeMode toHomeOnly : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v0

    .line 677
    .local v0, "favoritesProvider":Lcom/android/launcher3/common/model/FavoritesProvider;
    if-eqz v0, :cond_2

    .line 678
    sget-boolean v2, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    .line 680
    .local v1, "mode":I
    :goto_0
    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/common/model/FavoritesProvider;->switchTable(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 681
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/launcher3/LauncherAppState;->writeHomeOnlyModeEnabled(Z)V

    .line 682
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->recreateLauncher(Landroid/content/Context;)V

    .line 687
    .end local v1    # "mode":I
    :cond_0
    :goto_1
    return-void

    .line 678
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 685
    :cond_2
    const-string v2, "LauncherBnrHelper"

    const-string v3, "FavoritesProvider instance is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static close(Ljava/io/InputStream;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 567
    if-eqz p0, :cond_0

    .line 568
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 570
    :catch_0
    move-exception v0

    .line 571
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "LauncherBnrHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close inputStream IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static close(Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 577
    if-eqz p0, :cond_0

    .line 578
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "LauncherBnrHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close outputStream IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static deleteDir(Ljava/lang/String;)V
    .locals 9
    .param p0, "dirPath"    # Ljava/lang/String;

    .prologue
    .line 586
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 587
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 588
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 589
    .local v2, "fileList":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 590
    const-string v4, "LauncherBnrHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteDir, fileList.length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v2, v4

    .line 592
    .local v3, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 593
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_0

    .line 594
    const-string v6, "LauncherBnrHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", delete failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 600
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "fileList":[Ljava/lang/String;
    .end local v3    # "filename":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 601
    return-void
.end method

.method private endLCExtractorTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 2
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 932
    const-string v0, "\n\n"

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 933
    const-string v0, "LCExtractorHome"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 934
    const-string v0, "favorites"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 938
    :goto_0
    return-void

    .line 936
    :cond_0
    const-string v0, "appOrder"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method public static getChangedComponent(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 604
    sget-object v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedComponent:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    return-object v0
.end method

.method public static getChangedWidgetComponent(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 608
    sget-object v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedWidgetComponent:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    return-object v0
.end method

.method public static getComponent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "restored"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .prologue
    .line 613
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    .local v0, "cn":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 617
    .local v4, "pkgMgr":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v4    # "pkgMgr":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    move-object v5, v0

    .line 641
    :goto_1
    return-object v5

    .line 618
    .restart local v4    # "pkgMgr":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 619
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v5, 0x1

    :try_start_2
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 620
    .local v3, "packages":[Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-direct {v1, v5, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 621
    .end local v0    # "cn":Landroid/content/ComponentName;
    .local v1, "cn":Landroid/content/ComponentName;
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v1

    .end local v1    # "cn":Landroid/content/ComponentName;
    .restart local v0    # "cn":Landroid/content/ComponentName;
    goto :goto_0

    .line 623
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "packages":[Ljava/lang/String;
    .end local v4    # "pkgMgr":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v2

    .line 624
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2
    const-string v5, "LauncherBnrHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid componentName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    and-int/lit8 v5, p1, 0x4

    if-eqz v5, :cond_2

    .line 627
    invoke-static {p0, v0}, Lcom/android/launcher3/common/bnr/scloud/SCloudBnr;->isWillRestored(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 628
    sget-object v5, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedComponent:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 629
    sget-object v5, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedComponent:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    goto :goto_1

    .line 631
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 636
    :cond_2
    sget-object v5, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedComponent:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 637
    sget-object v5, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedComponent:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    goto :goto_1

    .line 623
    .end local v0    # "cn":Landroid/content/ComponentName;
    .restart local v1    # "cn":Landroid/content/ComponentName;
    .restart local v3    # "packages":[Ljava/lang/String;
    .restart local v4    # "pkgMgr":Landroid/content/pm/PackageManager;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "cn":Landroid/content/ComponentName;
    .restart local v0    # "cn":Landroid/content/ComponentName;
    goto :goto_2
.end method

.method public static getFavoritesTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "container"    # Ljava/lang/String;

    .prologue
    .line 514
    const-string v0, "favorites"

    .line 515
    .local v0, "tableName":Ljava/lang/String;
    const-string v1, "easy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 516
    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 527
    :goto_0
    return-object v1

    .line 516
    :cond_0
    const-string v1, "favorites_easy"

    goto :goto_0

    .line 517
    :cond_1
    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v1, :cond_2

    .line 518
    const-string v0, "favorites_standard"

    .line 521
    :cond_2
    const-string v1, "homeOnly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    if-eqz v1, :cond_4

    .line 522
    const-string v0, "favorites_homeApps"

    :cond_3
    :goto_1
    move-object v1, v0

    .line 527
    goto :goto_0

    .line 523
    :cond_4
    const-string v1, "homeOnly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    if-nez v1, :cond_3

    .line 524
    const-string v0, "favorites_homeOnly"

    goto :goto_1
.end method

.method public static getFavoritesUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "container"    # Ljava/lang/String;

    .prologue
    .line 492
    sget-boolean v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    invoke-static {p0, v0}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getFavoritesUri(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getFavoritesUri(Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 2
    .param p0, "container"    # Ljava/lang/String;
    .param p1, "isHomeOnly"    # Z

    .prologue
    .line 496
    sget-object v0, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 498
    .local v0, "favoritesUri":Landroid/net/Uri;
    const-string v1, "easy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 499
    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 510
    :goto_0
    return-object v1

    .line 499
    :cond_0
    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_Easy;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 500
    :cond_1
    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v1, :cond_2

    .line 501
    sget-object v0, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_Standard;->CONTENT_URI:Landroid/net/Uri;

    .line 504
    :cond_2
    const-string v1, "homeOnly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p1, :cond_4

    .line 505
    sget-object v0, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_HomeApps;->CONTENT_URI:Landroid/net/Uri;

    :cond_3
    :goto_1
    move-object v1, v0

    .line 510
    goto :goto_0

    .line 506
    :cond_4
    const-string v1, "homeOnly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    .line 507
    sget-object v0, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_HomeOnly;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Lcom/android/launcher3/common/bnr/LauncherBnrHelper;
    .locals 2

    .prologue
    .line 96
    const-class v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sInstance:Lcom/android/launcher3/common/bnr/LauncherBnrHelper;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sInstance:Lcom/android/launcher3/common/bnr/LauncherBnrHelper;

    .line 99
    :cond_0
    sget-object v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sInstance:Lcom/android/launcher3/common/bnr/LauncherBnrHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getUserSelectionArg(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "profileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v1

    .line 898
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWorkspaceScreenTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "container"    # Ljava/lang/String;

    .prologue
    .line 549
    const-string v0, "workspaceScreens"

    .line 550
    .local v0, "tableName":Ljava/lang/String;
    const-string v1, "easy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 551
    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 562
    :goto_0
    return-object v1

    .line 551
    :cond_0
    const-string v1, "workspaceScreens_easy"

    goto :goto_0

    .line 552
    :cond_1
    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v1, :cond_2

    .line 553
    const-string v0, "workspaceScreens_standard"

    .line 556
    :cond_2
    const-string v1, "homeOnly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    if-eqz v1, :cond_4

    .line 557
    const-string v0, "workspaceScreens_homeApps"

    :cond_3
    :goto_1
    move-object v1, v0

    .line 562
    goto :goto_0

    .line 558
    :cond_4
    const-string v1, "homeOnly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    if-nez v1, :cond_3

    .line 559
    const-string v0, "workspaceScreens_homeOnly"

    goto :goto_1
.end method

.method public static getWorkspaceScreenUri(Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 2
    .param p0, "container"    # Ljava/lang/String;
    .param p1, "isHomeOnly"    # Z

    .prologue
    .line 531
    sget-object v0, Lcom/android/launcher3/common/model/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    .line 532
    .local v0, "workspaceScreenUri":Landroid/net/Uri;
    const-string v1, "easy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 533
    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 545
    :goto_0
    return-object v1

    .line 533
    :cond_0
    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$WorkspaceScreens_Easy;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 535
    :cond_1
    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v1, :cond_2

    .line 536
    sget-object v0, Lcom/android/launcher3/common/model/LauncherSettings$WorkspaceScreens_Standard;->CONTENT_URI:Landroid/net/Uri;

    .line 539
    :cond_2
    const-string v1, "homeOnly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p1, :cond_4

    .line 540
    sget-object v0, Lcom/android/launcher3/common/model/LauncherSettings$WorkspaceScreens_HomeApps;->CONTENT_URI:Landroid/net/Uri;

    :cond_3
    :goto_1
    move-object v1, v0

    .line 545
    goto :goto_0

    .line 541
    :cond_4
    const-string v1, "homeOnly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    .line 542
    sget-object v0, Lcom/android/launcher3/common/model/LauncherSettings$WorkspaceScreens_HomeOnly;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_1
.end method

.method private loadChangedComponentForPackage(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 840
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 842
    .local v2, "depth":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 843
    .local v4, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 844
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v2, :cond_2

    :cond_1
    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    .line 845
    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 849
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    .line 850
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 854
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 855
    .local v6, "size":I
    const-string v8, "LauncherBnrHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadChangedComponentForPackage item list size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    add-int/lit8 v8, v6, -0x1

    if-ge v3, v8, :cond_4

    .line 858
    add-int/lit8 v5, v3, 0x1

    .local v5, "j":I
    :goto_2
    if-ge v5, v6, :cond_3

    .line 859
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 860
    .local v1, "before":Landroid/content/ComponentName;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 861
    .local v0, "after":Landroid/content/ComponentName;
    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->addChangedComponent(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 858
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 857
    .end local v0    # "after":Landroid/content/ComponentName;
    .end local v1    # "before":Landroid/content/ComponentName;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 864
    .end local v5    # "j":I
    :cond_4
    return-void
.end method

.method private loadChangedComponentForWidget(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 868
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 870
    .local v2, "depth":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 871
    .local v4, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v9, 0x3

    if-ne v7, v9, :cond_1

    .line 872
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v2, :cond_2

    :cond_1
    const/4 v9, 0x1

    if-eq v7, v9, :cond_2

    .line 873
    const/4 v9, 0x2

    if-ne v7, v9, :cond_0

    .line 877
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_0

    .line 878
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 882
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 883
    .local v6, "size":I
    const-string v9, "LauncherBnrHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadChangedComponentForWidget item list size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-static {p1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getAllProviders()Ljava/util/List;

    move-result-object v8

    .line 887
    .local v8, "widgetsAll":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    add-int/lit8 v9, v6, -0x1

    if-ge v3, v9, :cond_4

    .line 888
    add-int/lit8 v5, v3, 0x1

    .local v5, "j":I
    :goto_2
    if-ge v5, v6, :cond_3

    .line 889
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 890
    .local v1, "before":Landroid/content/ComponentName;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 891
    .local v0, "after":Landroid/content/ComponentName;
    invoke-direct {p0, v8, v1, v0}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->addChangedWidgetComponent(Ljava/util/List;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 888
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 887
    .end local v0    # "after":Landroid/content/ComponentName;
    .end local v1    # "before":Landroid/content/ComponentName;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 894
    .end local v5    # "j":I
    :cond_4
    return-void
.end method

.method private loadChangedComponentFromPath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 798
    const-string v8, "LauncherBnrHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadChangedComponentFromPath path = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/change_native_packages.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 801
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 802
    const-string v8, "LauncherBnrHelper"

    const-string v9, "loadChangedComponentFromPath there is no file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    const/4 v3, 0x0

    .line 808
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 809
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 810
    .local v1, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 811
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v8, "utf-8"

    invoke-interface {v6, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 814
    :cond_2
    :goto_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    .line 815
    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 818
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 819
    .local v5, "name":Ljava/lang/String;
    const-string v8, "package"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 820
    invoke-direct {p0, p1, v6}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->loadChangedComponentForPackage(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 825
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 826
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_2
    :try_start_2
    const-string v8, "LauncherBnrHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadChangedComponentFromPath exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 828
    if-eqz v3, :cond_0

    .line 830
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 831
    :catch_1
    move-exception v0

    .line 832
    const-string v8, "LauncherBnrHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadChangedComponentFromPath exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 821
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "type":I
    :cond_3
    :try_start_4
    const-string v8, "widget"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 822
    invoke-direct {p0, p1, v6}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->loadChangedComponentForWidget(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 828
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    :catchall_0
    move-exception v8

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_3
    if-eqz v3, :cond_4

    .line 830
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 833
    :cond_4
    :goto_4
    throw v8

    .line 828
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "type":I
    :cond_5
    if-eqz v4, :cond_6

    .line 830
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object v3, v4

    .line 833
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 831
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    .line 832
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v8, "LauncherBnrHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadChangedComponentFromPath exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 833
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 831
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    :catch_3
    move-exception v0

    .line 832
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v9, "LauncherBnrHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadChangedComponentFromPath exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 828
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    goto :goto_3

    .line 825
    :catch_4
    move-exception v0

    goto/16 :goto_2

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "type":I
    :cond_6
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method private loadChangedComponentFromRes(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 718
    sget-object v6, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedComponent:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 720
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0a0007

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 721
    .local v3, "cmpList":[Ljava/lang/String;
    if-eqz v3, :cond_1

    array-length v6, v3

    if-lez v6, :cond_1

    .line 722
    array-length v8, v3

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v2, v3, v6

    .line 723
    .local v2, "cmp":Ljava/lang/String;
    const-string v9, "\\|"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 725
    .local v4, "key":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v9, v4

    if-ne v9, v11, :cond_0

    .line 726
    aget-object v9, v4, v7

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v7

    .line 727
    aget-object v9, v4, v7

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 728
    .local v1, "before":Landroid/content/ComponentName;
    aget-object v9, v4, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v10

    .line 729
    aget-object v9, v4, v10

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 730
    .local v0, "after":Landroid/content/ComponentName;
    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->addChangedComponent(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 722
    .end local v0    # "after":Landroid/content/ComponentName;
    .end local v1    # "before":Landroid/content/ComponentName;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 736
    .end local v2    # "cmp":Ljava/lang/String;
    .end local v3    # "cmpList":[Ljava/lang/String;
    .end local v4    # "key":[Ljava/lang/String;
    :cond_1
    sget-object v6, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedWidgetComponent:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 738
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0a0008

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 739
    .restart local v3    # "cmpList":[Ljava/lang/String;
    if-eqz v3, :cond_3

    array-length v6, v3

    if-lez v6, :cond_3

    .line 741
    invoke-static {p1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getAllProviders()Ljava/util/List;

    move-result-object v5

    .line 743
    .local v5, "widgetsAll":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    array-length v8, v3

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_3

    aget-object v2, v3, v6

    .line 744
    .restart local v2    # "cmp":Ljava/lang/String;
    const-string v9, "\\|"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 745
    .restart local v4    # "key":[Ljava/lang/String;
    if-eqz v4, :cond_2

    array-length v9, v4

    if-ne v9, v11, :cond_2

    .line 746
    aget-object v9, v4, v7

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v7

    .line 747
    aget-object v9, v4, v7

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 748
    .restart local v1    # "before":Landroid/content/ComponentName;
    aget-object v9, v4, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v10

    .line 749
    aget-object v9, v4, v10

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 750
    .restart local v0    # "after":Landroid/content/ComponentName;
    invoke-direct {p0, v5, v1, v0}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->addChangedWidgetComponent(Ljava/util/List;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 743
    .end local v0    # "after":Landroid/content/ComponentName;
    .end local v1    # "before":Landroid/content/ComponentName;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 755
    .end local v2    # "cmp":Ljava/lang/String;
    .end local v3    # "cmpList":[Ljava/lang/String;
    .end local v4    # "key":[Ljava/lang/String;
    .end local v5    # "widgetsAll":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_3
    return-void
.end method

.method private makeDebugLayoutFile(Ljava/lang/String;Ljava/io/FileInputStream;Ljava/io/InputStream;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fis"    # Ljava/io/FileInputStream;
    .param p3, "newFis"    # Ljava/io/InputStream;

    .prologue
    .line 645
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/homescreen_original.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 646
    .local v4, "saveFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 648
    .local v2, "newFos":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 649
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 652
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    .end local v2    # "newFos":Ljava/io/OutputStream;
    .local v3, "newFos":Ljava/io/OutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {p3}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "data":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_4

    .line 656
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 658
    .end local v0    # "data":I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 659
    .end local v3    # "newFos":Ljava/io/OutputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "newFos":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    const-string v5, "LauncherBnrHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "debug mode error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 661
    if-eqz p3, :cond_1

    .line 662
    invoke-static {p3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    .line 664
    :cond_1
    if-eqz p2, :cond_2

    .line 665
    invoke-static {p2}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    .line 667
    :cond_2
    if-eqz v2, :cond_3

    .line 668
    invoke-static {v2}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    .line 671
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return-void

    .line 661
    .end local v2    # "newFos":Ljava/io/OutputStream;
    .restart local v0    # "data":I
    .restart local v3    # "newFos":Ljava/io/OutputStream;
    :cond_4
    if-eqz p3, :cond_5

    .line 662
    invoke-static {p3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    .line 664
    :cond_5
    if-eqz p2, :cond_6

    .line 665
    invoke-static {p2}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    .line 667
    :cond_6
    if-eqz v3, :cond_a

    .line 668
    invoke-static {v3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    move-object v2, v3

    .end local v3    # "newFos":Ljava/io/OutputStream;
    .restart local v2    # "newFos":Ljava/io/OutputStream;
    goto :goto_2

    .line 661
    .end local v0    # "data":I
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz p3, :cond_7

    .line 662
    invoke-static {p3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    .line 664
    :cond_7
    if-eqz p2, :cond_8

    .line 665
    invoke-static {p2}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    .line 667
    :cond_8
    if-eqz v2, :cond_9

    .line 668
    invoke-static {v2}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    :cond_9
    throw v5

    .line 661
    .end local v2    # "newFos":Ljava/io/OutputStream;
    .restart local v3    # "newFos":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "newFos":Ljava/io/OutputStream;
    .restart local v2    # "newFos":Ljava/io/OutputStream;
    goto :goto_3

    .line 658
    :catch_1
    move-exception v1

    goto :goto_1

    .end local v2    # "newFos":Ljava/io/OutputStream;
    .restart local v0    # "data":I
    .restart local v3    # "newFos":Ljava/io/OutputStream;
    :cond_a
    move-object v2, v3

    .end local v3    # "newFos":Ljava/io/OutputStream;
    .restart local v2    # "newFos":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public static registerBnrCallBack(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "callback":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;>;"
    sput-object p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    .line 104
    return-void
.end method

.method private restoreLayout(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ILcom/android/launcher3/common/bnr/LauncherBnrListener;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "saveFile"    # Ljava/io/File;
    .param p4, "debugLevel"    # I
    .param p5, "listener"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener;

    .prologue
    .line 331
    const/4 v3, 0x0

    .line 332
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 333
    .local v5, "newIs":Ljava/io/InputStream;
    iget-object v7, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 334
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->loadChangedComponentFromRes(Landroid/content/Context;)V

    .line 335
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->loadChangedComponentFromPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 338
    const/16 v7, 0x3ec

    if-ne p4, v7, :cond_3

    .line 339
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-interface {p5, v4}, Lcom/android/launcher3/common/bnr/LauncherBnrListener;->getDecryptStream(Ljava/io/FileInputStream;)Ljava/io/InputStream;

    move-result-object v5

    .line 341
    if-eqz v5, :cond_8

    .line 342
    invoke-direct {p0, p2, v4, v5}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->makeDebugLayoutFile(Ljava/lang/String;Ljava/io/FileInputStream;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 379
    if-eqz v5, :cond_0

    .line 380
    invoke-static {v5}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    .line 382
    :cond_0
    if-eqz v4, :cond_1

    .line 383
    invoke-static {v4}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    :cond_1
    move-object v3, v4

    .line 386
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_0
    return-void

    .line 346
    :cond_3
    :try_start_2
    sget-object v7, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    move-object v4, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;

    .line 347
    .local v0, "bnrCallBack":Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 348
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :try_start_4
    invoke-interface {p5, v3}, Lcom/android/launcher3/common/bnr/LauncherBnrListener;->getDecryptStream(Ljava/io/FileInputStream;)Ljava/io/InputStream;

    move-result-object v5

    .line 350
    if-eqz v5, :cond_4

    .line 351
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 352
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 353
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v8, "utf-8"

    invoke-interface {v6, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 355
    iget-object v8, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    invoke-interface {v0, p1, v6, v8, v9}, Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;->restoreLayout(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 358
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    iget-object v8, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    iget v8, v8, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 359
    iget-object v8, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v9, 0x3

    iput v9, v8, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 362
    :cond_5
    if-eqz v5, :cond_6

    .line 363
    invoke-static {v5}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    .line 365
    :cond_6
    if-eqz v3, :cond_7

    .line 366
    invoke-static {v3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    move-object v4, v3

    .line 368
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v0    # "bnrCallBack":Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;
    :cond_8
    move-object v3, v4

    .line 379
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    if-eqz v5, :cond_9

    .line 380
    invoke-static {v5}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    .line 382
    :cond_9
    if-eqz v3, :cond_2

    .line 383
    invoke-static {v3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    goto :goto_0

    .line 370
    :catch_0
    move-exception v7

    :goto_2
    move-object v1, v7

    .line 371
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    iget-object v7, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v8, 0x1

    iput v8, v7, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 372
    iget-object v7, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v8, 0x1

    iput v8, v7, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 373
    const-string v7, "LauncherBnrHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bnr fail, occur exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 379
    if-eqz v5, :cond_a

    .line 380
    invoke-static {v5}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    .line 382
    :cond_a
    if-eqz v3, :cond_2

    .line 383
    invoke-static {v3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 374
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 375
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_6
    iget-object v7, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v8, 0x1

    iput v8, v7, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 376
    iget-object v7, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v8, 0x2

    iput v8, v7, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 377
    const-string v7, "LauncherBnrHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bnr fail, occur exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 379
    if-eqz v5, :cond_b

    .line 380
    invoke-static {v5}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    .line 382
    :cond_b
    if-eqz v3, :cond_2

    .line 383
    invoke-static {v3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 379
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v5, :cond_c

    .line 380
    invoke-static {v5}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    .line 382
    :cond_c
    if-eqz v3, :cond_d

    .line 383
    invoke-static {v3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    :cond_d
    throw v7

    .line 370
    :catch_2
    move-exception v7

    :goto_6
    move-object v1, v7

    goto :goto_3

    .line 379
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 374
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 370
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v7

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v7

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private startLCExtractorTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 3
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 918
    const-string v0, "\n\n"

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 919
    const-string v0, "LCExtractorHome"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    const-string v0, "favorites"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 921
    const-string v0, "xmlns:launcher"

    const-string v1, "http://schemas.android.com/apk/res/com.sec.android.app.launcher"

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 928
    :goto_0
    return-void

    .line 924
    :cond_0
    const-string v0, "appOrder"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 925
    const-string v0, "xmlns:launcher"

    const-string v1, "http://schemas.android.com/apk/res/com.sec.android.app.launcher"

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized backup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener;

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    const-string v9, "LauncherBnrHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "backup source : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v9, "LauncherBnrHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "backup path : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x0

    iput v10, v9, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 112
    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x0

    iput v10, v9, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 114
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    .line 116
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 115
    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 117
    .local v7, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 118
    const-string v9, "EMPTY_DATABASE_CREATED"

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_0

    .line 119
    const-string v9, "home_only_mode"

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    .line 121
    :cond_0
    const-string v9, "LauncherBnrHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "backup sIsHomeOnly = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_1
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    .line 125
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 126
    const-string v9, "easy_mode"

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    .line 129
    :cond_2
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 131
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "fileList":[Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 133
    const-string v9, "LauncherBnrHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dir fileList.length : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    array-length v10, v5

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_5

    aget-object v6, v5, v9

    .line 135
    .local v6, "filename":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x2f

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_3

    .line 137
    const-string v11, "LauncherBnrHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", delete failed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 142
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "fileList":[Ljava/lang/String;
    .end local v6    # "filename":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 145
    :cond_5
    sget-object v9, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    if-eqz v9, :cond_6

    sget-object v9, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 146
    :cond_6
    const-string v9, "LauncherBnrHelper"

    const-string v10, "sBackupCallBack is null or empty"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x1

    iput v10, v9, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 148
    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x1

    iput v10, v9, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 149
    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v9, v10}, Lcom/android/launcher3/common/bnr/LauncherBnrListener;->backupComplete(Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :goto_1
    monitor-exit p0

    return-void

    .line 153
    :cond_7
    :try_start_1
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/homescreen.exml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .local v8, "saveFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-nez v9, :cond_8

    .line 156
    :try_start_2
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    :cond_8
    :try_start_3
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, p1, v8, v0, v1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->backupLayout(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener;)V

    .line 168
    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    move-object/from16 v0, p4

    invoke-interface {v0, v9, v8}, Lcom/android/launcher3/common/bnr/LauncherBnrListener;->backupComplete(Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 108
    .end local v2    # "dir":Ljava/io/File;
    .end local v7    # "prefs":Landroid/content/SharedPreferences;
    .end local v8    # "saveFile":Ljava/io/File;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 157
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v7    # "prefs":Landroid/content/SharedPreferences;
    .restart local v8    # "saveFile":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 158
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    const-string v9, "LauncherBnrHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "backup IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x1

    iput v10, v9, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 160
    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x1

    iput v10, v9, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 161
    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v9, v10}, Lcom/android/launcher3/common/bnr/LauncherBnrListener;->backupComplete(Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public extractXML(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlFileName"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 392
    const/4 v14, 0x0

    sput-boolean v14, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    sput-boolean v14, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    .line 394
    new-instance v11, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/LCExtractor"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x2f

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 396
    .local v11, "saveFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 398
    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 405
    :cond_0
    const/4 v6, 0x0

    .line 406
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 408
    .local v9, "newFos":Ljava/io/OutputStream;
    :try_start_1
    new-instance v13, Ljava/io/StringWriter;

    invoke-direct {v13}, Ljava/io/StringWriter;-><init>()V

    .line 409
    .local v13, "writer":Ljava/io/StringWriter;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    move-object v9, v7

    .line 413
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v12

    .line 415
    .local v12, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_3
    invoke-interface {v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 416
    const-string v14, "UTF-8"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-interface {v12, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 418
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->addApacheLicense(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 419
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v12, v1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->startLCExtractorTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 421
    sget-object v14, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;

    .line 422
    .local v3, "bnrCallBack":Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v3, v0, v12, v1, v15}, Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;->backupLayout(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 428
    .end local v3    # "bnrCallBack":Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;
    :catch_0
    move-exception v5

    .line 429
    .local v5, "e":Ljava/lang/RuntimeException;
    :try_start_4
    const-string v14, "LauncherBnrHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RuntimeException while generate XML : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 430
    const/4 v14, 0x0

    .line 448
    if-eqz v9, :cond_1

    .line 449
    invoke-static {v9}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    .line 451
    :cond_1
    if-eqz v7, :cond_2

    .line 452
    invoke-static {v7}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    .line 456
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "newFos":Ljava/io/OutputStream;
    .end local v12    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v13    # "writer":Ljava/io/StringWriter;
    :cond_2
    :goto_1
    return v14

    .line 399
    :catch_1
    move-exception v5

    .line 400
    .local v5, "e":Ljava/io/IOException;
    const-string v14, "LauncherBnrHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "extractXML createNewFile IOException : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v14, 0x0

    goto :goto_1

    .line 425
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "newFos":Ljava/io/OutputStream;
    .restart local v12    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v13    # "writer":Ljava/io/StringWriter;
    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v12, v1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->endLCExtractorTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 426
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 427
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 433
    :try_start_6
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v13}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "UTF-8"

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 434
    .local v8, "in":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 437
    .local v2, "bis":Ljava/io/BufferedInputStream;
    const/16 v14, 0x400

    new-array v4, v14, [B

    .line 438
    .local v4, "buffer":[B
    :goto_2
    const/4 v14, 0x0

    const/16 v15, 0x400

    invoke-virtual {v2, v4, v14, v15}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v10

    .local v10, "readCount":I
    const/4 v14, -0x1

    if-eq v10, v14, :cond_5

    .line 439
    const/4 v14, 0x0

    invoke-virtual {v9, v4, v14, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 441
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "buffer":[B
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v10    # "readCount":I
    .end local v12    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_2
    move-exception v5

    move-object v6, v7

    .line 442
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "writer":Ljava/io/StringWriter;
    .local v5, "e":Ljava/lang/RuntimeException;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_7
    const-string v14, "LauncherBnrHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RuntimeException : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 443
    const/4 v14, 0x0

    .line 448
    if-eqz v9, :cond_4

    .line 449
    invoke-static {v9}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    .line 451
    :cond_4
    if-eqz v6, :cond_2

    .line 452
    invoke-static {v6}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    goto :goto_1

    .line 448
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "buffer":[B
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local v10    # "readCount":I
    .restart local v12    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v13    # "writer":Ljava/io/StringWriter;
    :cond_5
    if-eqz v9, :cond_6

    .line 449
    invoke-static {v9}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    .line 451
    :cond_6
    if-eqz v7, :cond_7

    .line 452
    invoke-static {v7}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    .line 456
    :cond_7
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 444
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "buffer":[B
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v10    # "readCount":I
    .end local v12    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v13    # "writer":Ljava/io/StringWriter;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v5

    .line 445
    .local v5, "e":Ljava/io/IOException;
    :goto_4
    :try_start_8
    const-string v14, "LauncherBnrHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IOException : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 446
    const/4 v14, 0x0

    .line 448
    if-eqz v9, :cond_8

    .line 449
    invoke-static {v9}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    .line 451
    :cond_8
    if-eqz v6, :cond_2

    .line 452
    invoke-static {v6}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    goto/16 :goto_1

    .line 448
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    :goto_5
    if-eqz v9, :cond_9

    .line 449
    invoke-static {v9}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    .line 451
    :cond_9
    if-eqz v6, :cond_a

    .line 452
    invoke-static {v6}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    :cond_a
    throw v14

    .line 448
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "writer":Ljava/io/StringWriter;
    :catchall_1
    move-exception v14

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 444
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v5

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 441
    .end local v13    # "writer":Ljava/io/StringWriter;
    :catch_5
    move-exception v5

    goto :goto_3
.end method

.method public recreateLauncher(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 690
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 691
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper$1;-><init>(Lcom/android/launcher3/common/bnr/LauncherBnrHelper;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 715
    return-void
.end method

.method public declared-synchronized restore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/android/launcher3/common/bnr/LauncherBnrListener;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "debugLevel"    # I
    .param p5, "listener"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener;

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    const-string v1, "LauncherBnrHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore source : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v1, "LauncherBnrHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 247
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 249
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    .line 251
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 250
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 252
    .local v10, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    const-string v1, "EMPTY_DATABASE_CREATED"

    const/4 v2, 0x0

    invoke-interface {v10, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    const-string v1, "home_only_mode"

    const/4 v2, 0x0

    invoke-interface {v10, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    .line 256
    :cond_0
    const-string v1, "LauncherBnrHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore sIsHomeOnly = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    .line 260
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    const-string v1, "easy_mode"

    const/4 v2, 0x0

    invoke-interface {v10, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    .line 264
    :cond_2
    new-instance v4, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/homescreen.exml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    .local v4, "saveFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 266
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 267
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 268
    const-string v1, "LauncherBnrHelper"

    const-string v2, "restore file not exist or sRestoreCallBack is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/common/bnr/LauncherBnrListener;->restoreComplete(Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    :goto_0
    monitor-exit p0

    return-void

    :cond_4
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    .line 273
    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->restoreLayout(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ILcom/android/launcher3/common/bnr/LauncherBnrListener;)V

    .line 275
    const/4 v7, 0x0

    .line 276
    .local v7, "changeMode":Z
    const/4 v12, 0x0

    .line 277
    .local v12, "toHomeOnly":Z
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    .line 278
    const-string v1, "LauncherBnrHelper"

    const-string v2, "mRestoredTable size is 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 280
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v2, 0x3

    iput v2, v1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 314
    .end local v7    # "changeMode":Z
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    move-object/from16 v0, p5

    invoke-interface {v0, v1, v4}, Lcom/android/launcher3/common/bnr/LauncherBnrListener;->restoreComplete(Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Ljava/io/File;)V

    .line 316
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    iget v1, v1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 317
    const-string v1, "EMPTY_DATABASE_CREATED"

    const/4 v2, 0x0

    invoke-interface {v10, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 318
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider;->clearFlagEmptyDbCreated()V

    .line 322
    :cond_6
    const/4 v1, 0x1

    if-ne v7, v1, :cond_b

    .line 323
    invoke-direct {p0, p1, v12}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->changeMode(Landroid/content/Context;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 243
    .end local v4    # "saveFile":Ljava/io/File;
    .end local v10    # "prefs":Landroid/content/SharedPreferences;
    .end local v12    # "toHomeOnly":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 281
    .restart local v4    # "saveFile":Ljava/io/File;
    .restart local v7    # "changeMode":Z
    .restart local v10    # "prefs":Landroid/content/SharedPreferences;
    .restart local v12    # "toHomeOnly":Z
    :cond_7
    :try_start_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 282
    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v1, :cond_8

    .line 283
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    const-string v2, "favorites"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 288
    :goto_2
    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 289
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 291
    .local v11, "tableName":Ljava/lang/String;
    const-string v1, "favorites"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 292
    const-string v1, "LauncherBnrHelper"

    const-string v2, "change mode (restored table count is 1)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v7, 0x1

    .line 294
    const-string v1, "favorites_homeOnly"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 295
    const/4 v12, 0x1

    goto :goto_1

    .line 285
    .end local v11    # "tableName":Ljava/lang/String;
    :cond_8
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    const-string v2, "favorites_easy"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 298
    :cond_9
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 299
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 300
    .local v8, "homeAppsTableName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 302
    .local v9, "homeOnlyTableName":Ljava/lang/String;
    const-string v1, "favorites_homeApps"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 303
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_a

    .line 304
    const-string v1, "LauncherBnrHelper"

    const-string v2, "change mode (restored table count is 2)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 306
    :cond_a
    const-string v1, "favorites_homeOnly"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 307
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 308
    const-string v1, "LauncherBnrHelper"

    const-string v2, "change mode (restored table count is 2)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v12, 0x1

    move v7, v12

    .local v7, "changeMode":I
    goto/16 :goto_1

    .line 325
    .end local v7    # "changeMode":I
    .end local v8    # "homeAppsTableName":Ljava/lang/String;
    .end local v9    # "homeOnlyTableName":Ljava/lang/String;
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->recreateLauncher(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
