.class public Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;
.super Ljava/lang/Object;
.source "ExternalFilterLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;
    }
.end annotation


# static fields
.field private static final ACTION_CHECK_LATEST_UPDATED_FILTER:Ljava/lang/String; = "com.samsung.android.provider.filterprovider.CHECK_LATEST_UPDATED_FILTER"

.field private static final ACTION_SYNC_UPDATED_FILTER_TO_DB:Ljava/lang/String; = "com.samsung.android.provider.filterprovider.SYNC_UPDATED_FILTER_TO_DB"

.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.provider.filterprovider/filters"

.field private static final AUTHORITY_INCLUDE_DELETE:Ljava/lang/String; = "com.samsung.android.provider.filterprovider/filters/include_deleted"

.field private static final BASE_URI:Landroid/net/Uri;

.field private static final BASE_URI_INCLUDE_DELETE:Landroid/net/Uri;

.field private static final CATEGORY:Ljava/lang/String; = "category"

.field private static final COUNTRY:Ljava/lang/String; = "country"

.field private static final DELETED:Ljava/lang/String; = "deleted"

.field public static final EFFECT_CATEGORY_BASIC:I = 0x0

.field public static final EFFECT_CATEGORY_BEAUTY:I = 0x1

.field private static final EFFECT_NAME:Ljava/lang/String; = "name"

.field private static final FILE_NAME:Ljava/lang/String; = "filename"

.field private static final FILTER_CHANGE_URI:Landroid/net/Uri;

.field private static final FILTER_ORDER:Ljava/lang/String; = "filter_order"

.field private static final FILTER_PROJECTION:[Ljava/lang/String;

.field private static final FILTER_PROJECTION_WITH_CATEGORY:[Ljava/lang/String;

.field private static final FILTER_PROVIDER_PACKAGE_VER1:Ljava/lang/String; = "com.sec.android.filter"

.field private static final FILTER_PROVIDER_PACKAGE_VER2:Ljava/lang/String; = "com.samsung.android.provider.filterprovider"

.field private static final FILTER_TYPE:Ljava/lang/String; = "filter_type"

.field private static final FRONT_DELETED:Ljava/lang/String; = "front_deleted"

.field private static final FRONT_FILTER_ORDER:Ljava/lang/String; = "front_filter_order"

.field private static final HANDLER:Ljava/lang/String; = "handler"

.field private static final HEIGHT:Ljava/lang/String; = "height"

.field private static final INDEX_CATEGORY:I = 0xf

.field private static final INDEX_COUNTRY:I = 0xd

.field private static final INDEX_DELETED:I = 0x10

.field private static final INDEX_EFFECT_NAME:I = 0x1

.field private static final INDEX_FILE_NAME:I = 0x2

.field private static final INDEX_FILTER_ORDER:I = 0x11

.field private static final INDEX_FILTER_TYPE:I = 0x5

.field private static final INDEX_FRONT_DELETED:I = 0x13

.field private static final INDEX_FRONT_FILTER_ORDER:I = 0x12

.field private static final INDEX_HANDLER:I = 0xb

.field private static final INDEX_HEIGHT:I = 0xa

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_MVENDOR:I = 0x4

.field private static final INDEX_PACKAGE_NAME:I = 0xc

.field private static final INDEX_POSX:I = 0x7

.field private static final INDEX_POSY:I = 0x8

.field private static final INDEX_RES_NAME:I = 0xe

.field private static final INDEX_TITLE:I = 0x6

.field private static final INDEX_VERSION:I = 0x3

.field private static final INDEX_WIDTH:I = 0x9

.field private static final NOTIFY_INDEXER_INSTALL:Ljava/lang/String; = "notifyAdd"

.field private static final NOTIFY_INDEXER_SEPARATOR:Ljava/lang/String; = "-"

.field private static final NOTIFY_INDEXER_UNINSTALL:Ljava/lang/String; = "notifyDelete"

.field private static final NOTIFY_INDEXER_UPDATED:Ljava/lang/String; = "isUpdated"

.field private static final PACKAGE_FILTER_PROVIDER:Ljava/lang/String; = "com.samsung.android.provider.filterprovider"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final POSX:Ljava/lang/String; = "posx"

.field private static final POSY:Ljava/lang/String; = "posy"

.field private static final RES_NAME:Ljava/lang/String; = "resource_name"

.field private static final TAG:Ljava/lang/String; = "ExternalFilterLoader"

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static final VENDOR:Ljava/lang/String; = "vendor"

.field private static final VERSION:Ljava/lang/String; = "version"

.field private static final WIDTH:Ljava/lang/String; = "width"

.field private static final _ID:Ljava/lang/String; = "_ID"

.field private static mBasicEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mBeautyEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mEffectCategory:I

.field private static mExternalEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mExternalFilterLoader:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

.field private static mFilterLoaded:Z

.field public static mIsNewFilterUploadedInServer:Z

.field private static final mLock:Ljava/lang/Object;

.field private static mNeedUpdateLocale:Z


# instance fields
.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mFilterDBChangeObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    const-string v0, "content://com.samsung.android.provider.filterprovider/filters"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->BASE_URI:Landroid/net/Uri;

    .line 54
    const-string v0, "content://com.samsung.android.provider.filterprovider/filters/include_deleted"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->BASE_URI_INCLUDE_DELETE:Landroid/net/Uri;

    .line 56
    const-string v0, "content://com.samsung.android.provider.filterprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->FILTER_CHANGE_URI:Landroid/net/Uri;

    .line 102
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_ID"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "filename"

    aput-object v1, v0, v5

    const-string v1, "version"

    aput-object v1, v0, v6

    const-string v1, "vendor"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "filter_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "posx"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "posy"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "handler"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "country"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "resource_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->FILTER_PROJECTION:[Ljava/lang/String;

    .line 104
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_ID"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "filename"

    aput-object v1, v0, v5

    const-string v1, "version"

    aput-object v1, v0, v6

    const-string v1, "vendor"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "filter_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "posx"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "posy"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "handler"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "country"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "resource_name"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "category"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "filter_order"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "front_filter_order"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "front_deleted"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->FILTER_PROJECTION_WITH_CATEGORY:[Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    .line 117
    sput-boolean v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mIsNewFilterUploadedInServer:Z

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    .line 121
    sput-boolean v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterLoaded:Z

    .line 122
    sput-boolean v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mNeedUpdateLocale:Z

    .line 124
    sput v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mEffectCategory:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 2
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const-string v0, "ExternalFilterLoader"

    const-string v1, "create ExternalFilterLoader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iput-object p1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 131
    new-instance v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$1;

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$1;-><init>(Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterDBChangeObserver:Landroid/database/ContentObserver;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method private checkUploadedFilterList()V
    .locals 3

    .prologue
    .line 896
    const-string v1, "ExternalFilterLoader"

    const-string v2, "checkUploadedFilterList"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 898
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.provider.filterprovider.CHECK_LATEST_UPDATED_FILTER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 899
    const-string v1, "com.samsung.android.provider.filterprovider"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 900
    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 901
    return-void
.end method

.method private getIdByCommandId(I)I
    .locals 3
    .param p1, "commandId"    # I

    .prologue
    .line 904
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 905
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 906
    sget v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mEffectCategory:I

    packed-switch v1, :pswitch_data_0

    .line 920
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 921
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectId()I

    move-result v1

    if-ne v1, p1, :cond_4

    .line 922
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getId()I

    move-result v1

    monitor-exit v2

    .line 935
    :goto_1
    return v1

    .line 908
    .end local v0    # "i":I
    :pswitch_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 909
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 910
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getId()I

    move-result v1

    monitor-exit v2

    goto :goto_1

    .line 933
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 908
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 914
    .end local v0    # "i":I
    :cond_2
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    :try_start_1
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 915
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectId()I

    move-result v1

    if-ne v1, p1, :cond_3

    .line 916
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getId()I

    move-result v1

    monitor-exit v2

    goto :goto_1

    .line 914
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 920
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 927
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 928
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectId()I

    move-result v1

    if-ne v1, p1, :cond_6

    .line 929
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getId()I

    move-result v1

    monitor-exit v2

    goto :goto_1

    .line 927
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 933
    :cond_7
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 935
    const/4 v1, -0x1

    goto/16 :goto_1

    .line 906
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;
    .locals 2
    .param p0, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;

    .prologue
    .line 164
    const-string v0, "Create ExternalFilterLoader"

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 166
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalFilterLoader:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalFilterLoader:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    .line 170
    :cond_0
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 171
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalFilterLoader:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    monitor-exit v1

    return-object v0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isEffectCategorySupported()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 176
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_VERSION_FILTER_PROVIDER"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExternalEffect(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 180
    const/16 v0, 0x1f40

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2328

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFilterLoaded()Z
    .locals 1

    .prologue
    .line 184
    sget-boolean v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterLoaded:Z

    return v0
.end method

.method public static isNewFilterUploaded()Z
    .locals 3

    .prologue
    .line 234
    const-string v0, "ExternalFilterLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNewFilterUploaded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mIsNewFilterUploadedInServer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    sget-boolean v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mIsNewFilterUploadedInServer:Z

    return v0
.end method

.method public static isValidExternalId(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 188
    const/16 v0, 0x1f40

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2328

    if-gt p0, v0, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needToUpdateExternalId(II)Z
    .locals 2
    .param p0, "id"    # I
    .param p1, "uninstalledEffectId"    # I

    .prologue
    .line 195
    add-int/lit16 v0, p0, -0x1f40

    add-int/lit16 v1, p1, -0x1f40

    if-lt v0, v1, :cond_0

    add-int/lit16 v0, p0, -0x1f40

    if-ltz v0, :cond_0

    .line 196
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static release()V
    .locals 2

    .prologue
    .line 202
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalFilterLoader:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    .line 204
    monitor-exit v1

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setEffectCategory(I)V
    .locals 2
    .param p0, "category"    # I

    .prologue
    .line 208
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    :try_start_0
    sput p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mEffectCategory:I

    .line 210
    monitor-exit v1

    .line 211
    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setNewFiltersUploadInfo(Z)V
    .locals 3
    .param p0, "isUploadedInServer"    # Z

    .prologue
    .line 244
    const-string v0, "ExternalFilterLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNewFiltersUploadInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    sput-boolean p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mIsNewFilterUploadedInServer:Z

    .line 246
    return-void
.end method

.method public static syncUploadedFilterListDBWithServer(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    const-string v1, "ExternalFilterLoader"

    const-string v2, "syncUploadedFilterListDBWithServer"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->setNewFiltersUploadInfo(Z)V

    .line 222
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 223
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.provider.filterprovider"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v1, "com.samsung.android.provider.filterprovider.SYNC_UPDATED_FILTER_TO_DB"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 226
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 252
    const-string v0, "ExternalFilterLoader"

    const-string v1, "clear ExternalFilterLoader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 255
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 256
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 257
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 258
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterLoaded:Z

    .line 259
    monitor-exit v1

    .line 260
    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEffectCategoryByEffectId(I)I
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/16 v2, 0x2008

    const/4 v0, 0x0

    .line 269
    const/16 v1, 0x1fa4

    if-lt p1, v1, :cond_1

    if-ge p1, v2, :cond_1

    .line 274
    :cond_0
    :goto_0
    return v0

    .line 271
    :cond_1
    if-lt p1, v2, :cond_0

    const/16 v1, 0x2328

    if-ge p1, v1, :cond_0

    .line 272
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getExternalEffectCount()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 278
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 279
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 281
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    monitor-exit v1

    .line 289
    :goto_0
    return v0

    .line 283
    :cond_0
    monitor-exit v1

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 286
    :cond_1
    :try_start_1
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 287
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 289
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getExternalEffectCountbyCategory(I)I
    .locals 3
    .param p1, "category"    # I

    .prologue
    const/4 v0, 0x0

    .line 302
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 304
    packed-switch p1, :pswitch_data_0

    .line 318
    monitor-exit v1

    .line 324
    :goto_0
    return v0

    .line 306
    :pswitch_0
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 307
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 309
    :cond_0
    :try_start_1
    monitor-exit v1

    goto :goto_0

    .line 312
    :pswitch_1
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 313
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 315
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 321
    :cond_2
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 322
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 324
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getExternalEffects()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 332
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    sget v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mEffectCategory:I

    packed-switch v0, :pswitch_data_0

    .line 339
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    monitor-exit v1

    .line 342
    :goto_0
    return-object v0

    .line 335
    :pswitch_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    monitor-exit v1

    goto :goto_0

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 337
    :pswitch_1
    :try_start_1
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    monitor-exit v1

    goto :goto_0

    .line 342
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getExternalEffects(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "effectCategory"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 349
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    packed-switch p1, :pswitch_data_0

    .line 356
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    monitor-exit v1

    .line 359
    :goto_0
    return-object v0

    .line 352
    :pswitch_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    monitor-exit v1

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 354
    :pswitch_1
    :try_start_1
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    monitor-exit v1

    goto :goto_0

    .line 359
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getExternalEffectsName(I)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 365
    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 367
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 368
    sget v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mEffectCategory:I

    packed-switch v1, :pswitch_data_0

    .line 378
    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 379
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    :goto_0
    return-object v1

    .line 370
    :pswitch_0
    :try_start_2
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1fa4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 371
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1fa4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    monitor-exit v3

    goto :goto_0

    .line 391
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 374
    :cond_1
    :pswitch_1
    :try_start_4
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x2008

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 375
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x2008

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectName()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 383
    :cond_2
    :try_start_6
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 384
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectName()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v1

    :try_start_7
    monitor-exit v3

    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "ex":Ljava/lang/Exception;
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    .line 390
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_3
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getExternalEffectsTitle(I)Ljava/lang/String;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/16 v5, 0x2008

    const/4 v3, 0x0

    .line 395
    sget-object v4, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 397
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 398
    const/16 v2, 0x1fa4

    if-lt p1, v2, :cond_2

    if-ge p1, v5, :cond_2

    .line 399
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1fa4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 400
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1fa4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "title":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 402
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    .end local v1    # "title":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 403
    .restart local v1    # "title":Ljava/lang/String;
    :cond_0
    :try_start_2
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1fa4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .end local v1    # "title":Ljava/lang/String;
    :try_start_3
    monitor-exit v4

    goto :goto_0

    .line 429
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 405
    :cond_1
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v3

    goto :goto_0

    .line 406
    :cond_2
    if-lt p1, v5, :cond_5

    const/16 v2, 0x2328

    if-ge p1, v2, :cond_5

    .line 407
    :try_start_5
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x2008

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 408
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x2008

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 409
    .restart local v1    # "title":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 410
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 411
    :cond_3
    :try_start_7
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x2008

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectName()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v1

    .end local v1    # "title":Ljava/lang/String;
    :try_start_8
    monitor-exit v4

    goto :goto_0

    .line 413
    :cond_4
    monitor-exit v4

    move-object v1, v3

    goto :goto_0

    .line 415
    :cond_5
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v1, v3

    goto :goto_0

    .line 418
    :cond_6
    :try_start_9
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 419
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 420
    .restart local v1    # "title":Ljava/lang/String;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v2

    if-nez v2, :cond_7

    .line 421
    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 422
    :cond_7
    :try_start_b
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectName()Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v1

    .end local v1    # "title":Ljava/lang/String;
    :try_start_c
    monitor-exit v4

    goto/16 :goto_0

    .line 424
    :cond_8
    monitor-exit v4

    move-object v1, v3

    goto/16 :goto_0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "ex":Ljava/lang/Exception;
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object v1, v3

    goto/16 :goto_0
.end method

.method public getExternalFilterFilterName(I)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 433
    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 435
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 436
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getEffectCategoryByEffectId(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 448
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    .line 457
    :goto_0
    return-object v1

    .line 438
    :pswitch_0
    :try_start_2
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1fa4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 439
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1fa4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFiterName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    monitor-exit v3

    goto :goto_0

    .line 459
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 441
    :cond_0
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 443
    :pswitch_1
    :try_start_5
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x2008

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 444
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x2008

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFiterName()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    :try_start_6
    monitor-exit v3

    goto :goto_0

    .line 446
    :cond_1
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 451
    :cond_2
    :try_start_7
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 452
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFiterName()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v1

    :try_start_8
    monitor-exit v3

    goto :goto_0

    .line 454
    :cond_3
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "ex":Ljava/lang/Exception;
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v1, v2

    goto/16 :goto_0

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getExternalFilterForSet(I)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterFullName(I)Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "fullName":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterPackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 467
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 470
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getExternalFilterFullName(I)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 474
    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 476
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 477
    const/16 v1, 0x1fa4

    if-lt p1, v1, :cond_1

    const/16 v1, 0x2008

    if-ge p1, v1, :cond_1

    .line 478
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1fa4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 479
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1fa4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFiterName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v3

    .line 495
    :goto_0
    return-object v1

    .line 481
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 483
    :cond_1
    :try_start_2
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x2008

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 484
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x2008

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFiterName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    monitor-exit v3

    goto :goto_0

    .line 497
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 486
    :cond_2
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 489
    :cond_3
    :try_start_5
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 490
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFiterName()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    :try_start_6
    monitor-exit v3

    goto :goto_0

    .line 492
    :cond_4
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "ex":Ljava/lang/Exception;
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v1, v2

    goto :goto_0
.end method

.method public getExternalFilterPackageName(I)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 501
    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 503
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 504
    const/16 v1, 0x1fa4

    if-lt p1, v1, :cond_1

    const/16 v1, 0x2008

    if-ge p1, v1, :cond_1

    .line 505
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1fa4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 506
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1fa4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v3

    .line 522
    :goto_0
    return-object v1

    .line 508
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 510
    :cond_1
    :try_start_2
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x2008

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 511
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x2008

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getPackageName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    monitor-exit v3

    goto :goto_0

    .line 524
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 513
    :cond_2
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 516
    :cond_3
    :try_start_5
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 517
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getPackageName()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    :try_start_6
    monitor-exit v3

    goto :goto_0

    .line 519
    :cond_4
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "ex":Ljava/lang/Exception;
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v1, v2

    goto :goto_0
.end method

.method public getExternalFilterVendorName(I)Ljava/lang/String;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 528
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 529
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 530
    const/16 v2, 0x1fa4

    if-lt p1, v2, :cond_1

    const/16 v2, 0x2008

    if-ge p1, v2, :cond_1

    .line 531
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    add-int/lit16 v3, p1, -0x1fa4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 532
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1fa4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getVendorName()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 546
    :goto_0
    return-object v0

    .line 534
    :cond_0
    monitor-exit v1

    goto :goto_0

    .line 548
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 536
    :cond_1
    :try_start_1
    const-string v2, "ExternalFilterLoader"

    const-string v3, "getExternalFilterVendorName = EFFECT_CATEGORY_BEAUTY"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    add-int/lit16 v3, p1, -0x2008

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 538
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x2008

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getVendorName()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 540
    :cond_2
    monitor-exit v1

    goto :goto_0

    .line 543
    :cond_3
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v3, p1, -0x1f40

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 544
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getVendorName()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 546
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isPreloadPackage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filterName"    # Ljava/lang/String;

    .prologue
    .line 553
    const-string v0, "com.sec.android.filter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    const/4 v0, 0x1

    .line 564
    :goto_0
    return v0

    .line 555
    :cond_0
    const-string v0, "com.samsung.android.provider.filterprovider"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.linecorp.aillis.filter.libdelicious.so"

    .line 556
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.linecorp.b612.filter.libriddle.so"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.pinguo.camera360filter.libgold.so"

    .line 557
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.pinguo.camera360filter.libsweet.so"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.thundersoft.ucamera.filter.libnostalgia.so"

    .line 558
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.thundersoft.ucamera.filter.librose.so"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.candycamera.android.filter.libmonogram.so"

    .line 559
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.candycamera.android.filter.libeveryday.so"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.linecorp.aillis.filter.libsunrise.so"

    .line 560
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.thundersoft.ucamera.filter.libmaple.so"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.pinguo.camera360filter.libmemory.so"

    .line 561
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.candycamera.android.filter.libcookiencream.so"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 562
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 564
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filterName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 569
    if-nez p1, :cond_0

    .line 584
    :goto_0
    return v2

    .line 573
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isPreloadPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    move v2, v3

    .line 574
    goto :goto_0

    .line 577
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 579
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 584
    goto :goto_0

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ExternalFilterLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ExternalFilter package ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") has been removed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadExternalFilters()Z
    .locals 56

    .prologue
    .line 588
    const-string v3, "ExternalFilterLoader"

    const-string v4, "load ExternalFilterLoader"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->isExternalEffectSupported(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 590
    const/4 v3, 0x0

    .line 841
    :goto_0
    return v3

    .line 592
    :cond_0
    const/16 v43, 0x0

    .line 593
    .local v43, "cursor":Landroid/database/Cursor;
    const/16 v46, 0x0

    .line 594
    .local v46, "filterCount":I
    const/16 v39, 0x0

    .line 595
    .local v39, "backFilterCount":I
    const/16 v47, 0x0

    .line 596
    .local v47, "frontFilterCount":I
    const/16 v21, 0x0

    .line 597
    .local v21, "category":I
    const/16 v49, 0x0

    .line 598
    .local v49, "front_order":I
    const/16 v41, 0x0

    .line 599
    .local v41, "back_order":I
    const/16 v48, 0x0

    .line 600
    .local v48, "front_deleted":I
    const/16 v40, 0x0

    .line 602
    .local v40, "back_deleted":I
    const/4 v14, 0x0

    .line 603
    .local v14, "posx":I
    const/4 v15, 0x0

    .line 604
    .local v15, "posy":I
    const/16 v16, 0x0

    .line 605
    .local v16, "width":I
    const/16 v17, 0x0

    .line 608
    .local v17, "height":I
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 609
    sget-object v5, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->FILTER_PROJECTION_WITH_CATEGORY:[Ljava/lang/String;

    .line 613
    .local v5, "projection":[Ljava/lang/String;
    :goto_1
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->COUNTRY_CHINA:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isNetworkPermissionEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 614
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->checkUploadedFilterList()V

    .line 616
    :cond_2
    sget-object v55, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v55

    .line 617
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 619
    :try_start_1
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 621
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->BASE_URI_INCLUDE_DELETE:Landroid/net/Uri;

    const-string v6, "category=0 or category=2"

    const/4 v7, 0x0

    const-string v8, "filter_order"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v43

    .line 626
    :goto_2
    if-eqz v43, :cond_d

    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_d

    .line 627
    :cond_3
    :goto_3
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 628
    const/4 v3, 0x0

    move-object/from16 v0, v43

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 630
    .local v7, "id":I
    const/4 v3, 0x1

    move-object/from16 v0, v43

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 631
    .local v10, "effectName":Ljava/lang/String;
    if-eqz v10, :cond_3

    const-string v3, "Unnamed filter"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 634
    const/4 v3, 0x2

    move-object/from16 v0, v43

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 635
    .local v11, "filterName":Ljava/lang/String;
    if-eqz v11, :cond_3

    const-string v3, "Unnamed filter"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 638
    const/4 v3, 0x3

    move-object/from16 v0, v43

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 640
    .local v12, "version":I
    const/4 v3, 0x4

    move-object/from16 v0, v43

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 641
    .local v9, "vendor":Ljava/lang/String;
    if-eqz v9, :cond_3

    const-string v3, "Unknown vendor"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 644
    const/4 v3, 0x5

    move-object/from16 v0, v43

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 645
    .local v20, "filter_type":Ljava/lang/String;
    if-eqz v20, :cond_3

    const-string v3, "Unknown FilterType"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 648
    const/16 v3, 0xc

    move-object/from16 v0, v43

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 649
    .local v19, "packageName":Ljava/lang/String;
    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isValidPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 653
    const/16 v3, 0xd

    move-object/from16 v0, v43

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 654
    .local v42, "country":Ljava/lang/String;
    if-eqz v42, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 657
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isPreloadPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v54

    .line 658
    .local v54, "ver":I
    const/4 v3, 0x1

    move/from16 v0, v54

    if-ne v0, v3, :cond_8

    .line 659
    const-string v53, "com.sec.android.filter"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 667
    .local v53, "resPkgName":Ljava/lang/String;
    :goto_4
    const/16 v3, 0xe

    :try_start_2
    move-object/from16 v0, v43

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v52

    .line 668
    .local v52, "resName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    move-object/from16 v0, v53

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v38

    .line 669
    .local v38, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v0, v38

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 670
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v50

    .line 671
    .local v50, "res":Landroid/content/res/Resources;
    const-string v3, "string"

    move-object/from16 v0, v50

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v51

    .line 672
    .local v51, "resId":I
    invoke-virtual/range {v50 .. v51}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 673
    .local v13, "title":Ljava/lang/String;
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mNeedUpdateLocale:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 681
    .end local v38    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v50    # "res":Landroid/content/res/Resources;
    .end local v51    # "resId":I
    .end local v52    # "resName":Ljava/lang/String;
    .end local v53    # "resPkgName":Ljava/lang/String;
    .end local v54    # "ver":I
    :goto_5
    if-eqz v13, :cond_3

    :try_start_3
    const-string v3, "Unknown title"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 685
    const/4 v3, 0x7

    move-object/from16 v0, v43

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 686
    const/16 v3, 0x8

    move-object/from16 v0, v43

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 687
    const/16 v3, 0x9

    move-object/from16 v0, v43

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 688
    const/16 v3, 0xa

    move-object/from16 v0, v43

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 689
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 690
    const/16 v3, 0xf

    move-object/from16 v0, v43

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 691
    const/16 v3, 0x12

    move-object/from16 v0, v43

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    .line 692
    const/16 v3, 0x11

    move-object/from16 v0, v43

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v41

    .line 693
    const/16 v3, 0x13

    move-object/from16 v0, v43

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    .line 694
    const/16 v3, 0x10

    move-object/from16 v0, v43

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    .line 697
    :cond_4
    const/16 v3, 0xb

    move-object/from16 v0, v43

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 698
    .local v18, "handler":Ljava/lang/String;
    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 701
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 702
    const-string v3, "ExternalFilterLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "id["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], effectName["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], filterName["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], version["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], vendor["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], filter_type["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], title["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], posx["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], posy["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], width["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], height["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], handler["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], packageName["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], category["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], front_order["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], back_order["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], front_deleted["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], back_deleted["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "]"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    new-instance v6, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    move/from16 v0, v46

    add-int/lit16 v8, v0, 0x1f40

    invoke-direct/range {v6 .. v21}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    if-nez v40, :cond_5

    .line 711
    new-instance v6, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    move/from16 v0, v39

    add-int/lit16 v8, v0, 0x1fa4

    invoke-direct/range {v6 .. v21}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 713
    .local v6, "mExtEffectItem":Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;
    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBasicEffects:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 714
    add-int/lit8 v39, v39, 0x1

    .line 724
    .end local v6    # "mExtEffectItem":Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;
    :cond_5
    :goto_6
    add-int/lit8 v46, v46, 0x1

    .line 725
    goto/16 :goto_3

    .line 611
    .end local v5    # "projection":[Ljava/lang/String;
    .end local v7    # "id":I
    .end local v9    # "vendor":Ljava/lang/String;
    .end local v10    # "effectName":Ljava/lang/String;
    .end local v11    # "filterName":Ljava/lang/String;
    .end local v12    # "version":I
    .end local v13    # "title":Ljava/lang/String;
    .end local v18    # "handler":Ljava/lang/String;
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v20    # "filter_type":Ljava/lang/String;
    .end local v42    # "country":Ljava/lang/String;
    :cond_6
    sget-object v5, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->FILTER_PROJECTION:[Ljava/lang/String;

    .restart local v5    # "projection":[Ljava/lang/String;
    goto/16 :goto_1

    .line 623
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->BASE_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v43

    goto/16 :goto_2

    .line 660
    .restart local v7    # "id":I
    .restart local v9    # "vendor":Ljava/lang/String;
    .restart local v10    # "effectName":Ljava/lang/String;
    .restart local v11    # "filterName":Ljava/lang/String;
    .restart local v12    # "version":I
    .restart local v19    # "packageName":Ljava/lang/String;
    .restart local v20    # "filter_type":Ljava/lang/String;
    .restart local v42    # "country":Ljava/lang/String;
    .restart local v54    # "ver":I
    :cond_8
    const/4 v3, 0x2

    move/from16 v0, v54

    if-ne v0, v3, :cond_9

    .line 661
    const-string v53, "com.samsung.android.provider.filterprovider"

    .restart local v53    # "resPkgName":Ljava/lang/String;
    goto/16 :goto_4

    .line 663
    .end local v53    # "resPkgName":Ljava/lang/String;
    :cond_9
    move-object/from16 v53, v19

    .restart local v53    # "resPkgName":Ljava/lang/String;
    goto/16 :goto_4

    .line 674
    :catch_0
    move-exception v45

    .line 675
    .local v45, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x6

    move-object/from16 v0, v43

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "title":Ljava/lang/String;
    goto/16 :goto_5

    .line 678
    .end local v13    # "title":Ljava/lang/String;
    .end local v45    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v53    # "resPkgName":Ljava/lang/String;
    .end local v54    # "ver":I
    :cond_a
    const/4 v3, 0x6

    move-object/from16 v0, v43

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "title":Ljava/lang/String;
    goto/16 :goto_5

    .line 717
    .restart local v18    # "handler":Ljava/lang/String;
    :cond_b
    const-string v3, "ExternalFilterLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "id["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], effectName["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], filterName["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], version["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], vendor["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], filter_type["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], title["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], posx["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], posy["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], width["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], height["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], handler["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], packageName["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "]"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    new-instance v22, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    move/from16 v0, v46

    add-int/lit16 v0, v0, 0x1f40

    move/from16 v24, v0

    move/from16 v23, v7

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v30, v14

    move/from16 v31, v15

    move/from16 v32, v16

    move/from16 v33, v17

    move-object/from16 v34, v18

    move-object/from16 v35, v19

    move-object/from16 v36, v20

    invoke-direct/range {v22 .. v36}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    .line 728
    .end local v7    # "id":I
    .end local v9    # "vendor":Ljava/lang/String;
    .end local v10    # "effectName":Ljava/lang/String;
    .end local v11    # "filterName":Ljava/lang/String;
    .end local v12    # "version":I
    .end local v13    # "title":Ljava/lang/String;
    .end local v18    # "handler":Ljava/lang/String;
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v20    # "filter_type":Ljava/lang/String;
    .end local v42    # "country":Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v43, :cond_c

    .line 729
    :try_start_5
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v3

    .line 840
    :catchall_1
    move-exception v3

    monitor-exit v55
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3

    .line 728
    :cond_d
    if-eqz v43, :cond_e

    .line 729
    :try_start_6
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->close()V

    .line 733
    :cond_e
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v3

    if-eqz v3, :cond_16

    .line 734
    const/16 v44, 0x0

    .line 737
    .local v44, "cursor_beauty":Landroid/database/Cursor;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    sget-object v23, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->BASE_URI_INCLUDE_DELETE:Landroid/net/Uri;

    const-string v25, "category=1"

    const/16 v26, 0x0

    const-string v27, "front_filter_order"

    move-object/from16 v24, v5

    invoke-virtual/range {v22 .. v27}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v44

    .line 739
    if-eqz v44, :cond_14

    invoke-interface/range {v44 .. v44}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_14

    .line 740
    :cond_f
    :goto_7
    invoke-interface/range {v44 .. v44}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 741
    const/4 v3, 0x0

    move-object/from16 v0, v44

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 743
    .restart local v7    # "id":I
    const/4 v3, 0x1

    move-object/from16 v0, v44

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 744
    .restart local v10    # "effectName":Ljava/lang/String;
    if-eqz v10, :cond_f

    const-string v3, "Unnamed filter"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 747
    const/4 v3, 0x2

    move-object/from16 v0, v44

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 748
    .restart local v11    # "filterName":Ljava/lang/String;
    if-eqz v11, :cond_f

    const-string v3, "Unnamed filter"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 751
    const/4 v3, 0x3

    move-object/from16 v0, v44

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 753
    .restart local v12    # "version":I
    const/4 v3, 0x4

    move-object/from16 v0, v44

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 754
    .restart local v9    # "vendor":Ljava/lang/String;
    if-eqz v9, :cond_f

    const-string v3, "Unknown vendor"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 757
    const/4 v3, 0x5

    move-object/from16 v0, v44

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 758
    .restart local v20    # "filter_type":Ljava/lang/String;
    if-eqz v20, :cond_f

    const-string v3, "Unknown FilterType"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 761
    const/16 v3, 0xc

    move-object/from16 v0, v44

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 762
    .restart local v19    # "packageName":Ljava/lang/String;
    if-eqz v19, :cond_f

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isValidPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 766
    const/16 v3, 0xd

    move-object/from16 v0, v44

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 767
    .restart local v42    # "country":Ljava/lang/String;
    if-eqz v42, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 770
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isPreloadPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v54

    .line 771
    .restart local v54    # "ver":I
    const/4 v3, 0x1

    move/from16 v0, v54

    if-ne v0, v3, :cond_11

    .line 772
    const-string v53, "com.sec.android.filter"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 780
    .restart local v53    # "resPkgName":Ljava/lang/String;
    :goto_8
    const/16 v3, 0xe

    :try_start_8
    move-object/from16 v0, v44

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v52

    .line 781
    .restart local v52    # "resName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    move-object/from16 v0, v53

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v38

    .line 782
    .restart local v38    # "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v0, v38

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 783
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v50

    .line 784
    .restart local v50    # "res":Landroid/content/res/Resources;
    const-string v3, "string"

    move-object/from16 v0, v50

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v51

    .line 785
    .restart local v51    # "resId":I
    invoke-virtual/range {v50 .. v51}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 786
    .restart local v13    # "title":Ljava/lang/String;
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mNeedUpdateLocale:Z
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 794
    .end local v38    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v50    # "res":Landroid/content/res/Resources;
    .end local v51    # "resId":I
    .end local v52    # "resName":Ljava/lang/String;
    .end local v53    # "resPkgName":Ljava/lang/String;
    .end local v54    # "ver":I
    :goto_9
    if-eqz v13, :cond_f

    :try_start_9
    const-string v3, "Unknown title"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 798
    const/4 v3, 0x7

    move-object/from16 v0, v44

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 799
    const/16 v3, 0x8

    move-object/from16 v0, v44

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 800
    const/16 v3, 0x9

    move-object/from16 v0, v44

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 801
    const/16 v3, 0xa

    move-object/from16 v0, v44

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 802
    const/16 v3, 0xf

    move-object/from16 v0, v44

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 803
    const/16 v3, 0x12

    move-object/from16 v0, v44

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    .line 804
    const/16 v3, 0x11

    move-object/from16 v0, v44

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v41

    .line 805
    const/16 v3, 0x13

    move-object/from16 v0, v44

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    .line 806
    const/16 v3, 0x10

    move-object/from16 v0, v44

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    .line 808
    const/16 v3, 0xb

    move-object/from16 v0, v44

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 809
    .restart local v18    # "handler":Ljava/lang/String;
    if-eqz v18, :cond_f

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    .line 812
    const-string v3, "ExternalFilterLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "id["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], effectName["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], filterName["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], version["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], vendor["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], filter_type["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], title["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], posx["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], posy["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], width["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], height["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], handler["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], packageName["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], category["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], front_order["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], back_order["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], front_deleted["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], back_deleted["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "]"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    new-instance v22, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    move/from16 v0, v46

    add-int/lit16 v0, v0, 0x1f40

    move/from16 v24, v0

    move/from16 v23, v7

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v30, v14

    move/from16 v31, v15

    move/from16 v32, v16

    move/from16 v33, v17

    move-object/from16 v34, v18

    move-object/from16 v35, v19

    move-object/from16 v36, v20

    move/from16 v37, v21

    invoke-direct/range {v22 .. v37}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    if-nez v48, :cond_10

    .line 821
    new-instance v6, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    move/from16 v0, v47

    add-int/lit16 v8, v0, 0x2008

    invoke-direct/range {v6 .. v21}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 823
    .restart local v6    # "mExtEffectItem":Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;
    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBeautyEffects:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    add-int/lit8 v47, v47, 0x1

    .line 826
    .end local v6    # "mExtEffectItem":Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;
    :cond_10
    add-int/lit8 v46, v46, 0x1

    .line 827
    goto/16 :goto_7

    .line 773
    .end local v13    # "title":Ljava/lang/String;
    .end local v18    # "handler":Ljava/lang/String;
    .restart local v54    # "ver":I
    :cond_11
    const/4 v3, 0x2

    move/from16 v0, v54

    if-ne v0, v3, :cond_12

    .line 774
    const-string v53, "com.samsung.android.provider.filterprovider"

    .restart local v53    # "resPkgName":Ljava/lang/String;
    goto/16 :goto_8

    .line 776
    .end local v53    # "resPkgName":Ljava/lang/String;
    :cond_12
    move-object/from16 v53, v19

    .restart local v53    # "resPkgName":Ljava/lang/String;
    goto/16 :goto_8

    .line 787
    :catch_1
    move-exception v45

    .line 788
    .restart local v45    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x6

    move-object/from16 v0, v44

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "title":Ljava/lang/String;
    goto/16 :goto_9

    .line 791
    .end local v13    # "title":Ljava/lang/String;
    .end local v45    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v53    # "resPkgName":Ljava/lang/String;
    .end local v54    # "ver":I
    :cond_13
    const/4 v3, 0x6

    move-object/from16 v0, v44

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "title":Ljava/lang/String;
    goto/16 :goto_9

    .line 829
    .end local v7    # "id":I
    .end local v9    # "vendor":Ljava/lang/String;
    .end local v10    # "effectName":Ljava/lang/String;
    .end local v11    # "filterName":Ljava/lang/String;
    .end local v12    # "version":I
    .end local v13    # "title":Ljava/lang/String;
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v20    # "filter_type":Ljava/lang/String;
    .end local v42    # "country":Ljava/lang/String;
    :cond_14
    sget-boolean v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mNeedUpdateLocale:Z

    if-eqz v3, :cond_15

    .line 830
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.samsung.filterprovider.LOCALE_CHANGE"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 831
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mNeedUpdateLocale:Z

    .line 833
    :cond_15
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterLoaded:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 835
    if-eqz v44, :cond_16

    .line 836
    :try_start_a
    invoke-interface/range {v44 .. v44}, Landroid/database/Cursor;->close()V

    .line 840
    .end local v44    # "cursor_beauty":Landroid/database/Cursor;
    :cond_16
    monitor-exit v55

    .line 841
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 835
    .restart local v44    # "cursor_beauty":Landroid/database/Cursor;
    :catchall_2
    move-exception v3

    if-eqz v44, :cond_17

    .line 836
    invoke-interface/range {v44 .. v44}, Landroid/database/Cursor;->close()V

    :cond_17
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
.end method

.method public registerObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 845
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->FILTER_CHANGE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterDBChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 850
    :goto_0
    return-void

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->BASE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterDBChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public saveOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 853
    .local p1, "currentCommandIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "previousCommandIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v5, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 854
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 856
    .local v2, "originalIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 857
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getIdByCommandId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 856
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 861
    :cond_0
    const/4 v1, 0x0

    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 862
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 863
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 864
    .local v3, "value":Landroid/content/ContentValues;
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 865
    sget v4, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mEffectCategory:I

    if-nez v4, :cond_2

    .line 866
    const-string v4, "filter_order"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 876
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->BASE_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_ID=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v3, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 861
    .end local v3    # "value":Landroid/content/ContentValues;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 867
    .restart local v3    # "value":Landroid/content/ContentValues;
    :cond_2
    sget v4, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mEffectCategory:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    .line 868
    const-string v4, "front_filter_order"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 879
    .end local v3    # "value":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 880
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "ExternalFilterLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveOrder : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 884
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 885
    return-void

    .line 870
    .restart local v3    # "value":Landroid/content/ContentValues;
    :cond_4
    :try_start_4
    const-string v4, "ExternalFilterLoader"

    const-string v6, "Unsupported category"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 881
    .end local v3    # "value":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    :try_start_5
    throw v4

    .line 884
    .end local v1    # "i":I
    .end local v2    # "originalIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .line 873
    .restart local v1    # "i":I
    .restart local v2    # "originalIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3    # "value":Landroid/content/ContentValues;
    :cond_5
    :try_start_6
    const-string v4, "filter_order"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public unRegisterObserver()V
    .locals 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterDBChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 889
    return-void
.end method
