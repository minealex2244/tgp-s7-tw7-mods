.class public Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;
.super Landroid/os/AsyncTask;
.source "PlugInStickerLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/plugin/PlugInStickerLoader$DBObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_CHECK_UPLOADED_STICKER_LIST:Ljava/lang/String; = "com.samsung.android.provider.stickerprovider.action.CHECK_UPLOADED_STICKER_LIST"

.field private static final ACTION_REFRESH_ALL_STICKERS:Ljava/lang/String; = "com.samsung.android.provider.stickerprovider.action.REFRESH_STICKERS"

.field private static final ACTION_SYNC_UPLOADED_STICKER_LIST_DB:Ljava/lang/String; = "com.samsung.android.provider.stickerprovider.action.SYNC_UPLOADED_STICKER_LIST_DB"

.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.provider.stickerprovider"

.field private static final FACE_AR_CURSOR_INDEX_PACKAGE_NAME:I = 0x0

.field private static final FACE_AR_CURSOR_INDEX_SCENE_TYPE:I = 0x3

.field private static final FACE_AR_CURSOR_INDEX_STICKER_NAME:I = 0x1

.field private static final FACE_AR_CURSOR_INDEX_SUB_ORDER:I = 0x4

.field private static final FACE_AR_CURSOR_INDEX_THUMBNAIL_RESOURCE_ID:I = 0x2

.field private static final KEY_STICKER_TYPE:Ljava/lang/String; = "key_sticker_type"

.field private static final MATCH_PATH_QUERY_INSTALLED_FACE_AR:Ljava/lang/String; = "path_query_installed_face_ar"

.field private static final MATCH_PATH_QUERY_INSTALLED_STAMP:Ljava/lang/String; = "path_query_installed_stamp"

.field private static final MATCH_PATH_QUERY_INSTALLED_STICKER_PACKAGE:Ljava/lang/String; = "path_query_installed_sticker_package"

.field private static final MATCH_PATH_QUERY_INSTALLED_WATERMARK:Ljava/lang/String; = "path_query_installed_watermark"

.field private static final NOTIFY_INDEXER_NEW_STICKER_UPLOADED:Ljava/lang/String; = "new_sticker_uploaded"

.field private static final NOTIFY_INDEXER_REFRESH_ALL:Ljava/lang/String; = "refreshAll"

.field private static final NOTIFY_INDEXER_SEPARATOR:Ljava/lang/String; = "-"

.field private static final NOTIFY_INDEXER_UNINSTALL:Ljava/lang/String; = "uninstall"

.field private static final PACKAGE_STICKER_PROVIDER:Ljava/lang/String; = "com.samsung.android.provider.stickerprovider"

.field private static final PREFIX_PACKAGE_FACE_AR:Ljava/lang/String; = "com.samsung.android.app.camera.sticker.facear"

.field private static final PREFIX_PACKAGE_STAMP:Ljava/lang/String; = "com.samsung.android.app.camera.sticker.stamp"

.field private static final PREFIX_PACKAGE_WATERMARK:Ljava/lang/String; = "com.samsung.android.app.camera.sticker.watermark"

.field private static final STAMP_CURSOR_INDEX_PACKAGE_NAME:I = 0x0

.field private static final STAMP_CURSOR_INDEX_PREVIEW_RESOURCE_HEIGHT:I = 0x4

.field private static final STAMP_CURSOR_INDEX_PREVIEW_RESOURCE_WIDTH:I = 0x3

.field private static final STAMP_CURSOR_INDEX_STICKER_NAME:I = 0x1

.field private static final STAMP_CURSOR_INDEX_SUB_ORDER:I = 0x5

.field private static final STAMP_CURSOR_INDEX_THUMBNAIL_RESOURCE_ID:I = 0x2

.field private static final STICKER_PACKAGE_CURSOR_INDEX_IS_PRELOADED:I = 0x1

.field private static final STICKER_PACKAGE_CURSOR_INDEX_MAIN_ORDER:I = 0x4

.field private static final STICKER_PACKAGE_CURSOR_INDEX_PACKAGE_NAME:I = 0x0

.field private static final STICKER_PACKAGE_CURSOR_INDEX_REPRESENTATIVE_NORMAL_RESOURCE_ID:I = 0x2

.field private static final STICKER_PACKAGE_CURSOR_INDEX_REPRESENTATIVE_PRESSED_RESOURCE_ID:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PlugInStickerLoader"

.field private static final URI_AUTHORITY:Landroid/net/Uri;

.field private static final WATERMARK_CURSOR_INDEX_CAPTURE_RESOURCE_ID:I = 0x6

.field private static final WATERMARK_CURSOR_INDEX_PACKAGE_NAME:I = 0x0

.field private static final WATERMARK_CURSOR_INDEX_PREVIEW_RESOURCE_HEIGHT:I = 0x5

.field private static final WATERMARK_CURSOR_INDEX_PREVIEW_RESOURCE_ID:I = 0x3

.field private static final WATERMARK_CURSOR_INDEX_PREVIEW_RESOURCE_WIDTH:I = 0x4

.field private static final WATERMARK_CURSOR_INDEX_STICKER_NAME:I = 0x1

.field private static final WATERMARK_CURSOR_INDEX_SUB_ORDER:I = 0x21

.field private static final WATERMARK_CURSOR_INDEX_TEXT1_COLOR:I = 0x11

.field private static final WATERMARK_CURSOR_INDEX_TEXT1_DEFAULT_TEXT:I = 0xd

.field private static final WATERMARK_CURSOR_INDEX_TEXT1_FONT:I = 0x10

.field private static final WATERMARK_CURSOR_INDEX_TEXT1_FONT_SIZE:I = 0xf

.field private static final WATERMARK_CURSOR_INDEX_TEXT1_HEIGHT:I = 0xa

.field private static final WATERMARK_CURSOR_INDEX_TEXT1_H_ALIGN:I = 0x12

.field private static final WATERMARK_CURSOR_INDEX_TEXT1_IS_EDITABLE:I = 0xb

.field private static final WATERMARK_CURSOR_INDEX_TEXT1_IS_VERTICAL:I = 0xc

.field private static final WATERMARK_CURSOR_INDEX_TEXT1_LEFT:I = 0x7

.field private static final WATERMARK_CURSOR_INDEX_TEXT1_TOP:I = 0x8

.field private static final WATERMARK_CURSOR_INDEX_TEXT1_TYPE:I = 0xe

.field private static final WATERMARK_CURSOR_INDEX_TEXT1_V_ALIGN:I = 0x13

.field private static final WATERMARK_CURSOR_INDEX_TEXT1_WIDTH:I = 0x9

.field private static final WATERMARK_CURSOR_INDEX_TEXT2_COLOR:I = 0x1e

.field private static final WATERMARK_CURSOR_INDEX_TEXT2_DEFAULT_TEXT:I = 0x1a

.field private static final WATERMARK_CURSOR_INDEX_TEXT2_FONT:I = 0x1d

.field private static final WATERMARK_CURSOR_INDEX_TEXT2_FONT_SIZE:I = 0x1c

.field private static final WATERMARK_CURSOR_INDEX_TEXT2_HEIGHT:I = 0x17

.field private static final WATERMARK_CURSOR_INDEX_TEXT2_H_ALIGN:I = 0x1f

.field private static final WATERMARK_CURSOR_INDEX_TEXT2_IS_EDITABLE:I = 0x18

.field private static final WATERMARK_CURSOR_INDEX_TEXT2_IS_VERTICAL:I = 0x19

.field private static final WATERMARK_CURSOR_INDEX_TEXT2_LEFT:I = 0x14

.field private static final WATERMARK_CURSOR_INDEX_TEXT2_TOP:I = 0x15

.field private static final WATERMARK_CURSOR_INDEX_TEXT2_TYPE:I = 0x1b

.field private static final WATERMARK_CURSOR_INDEX_TEXT2_V_ALIGN:I = 0x20

.field private static final WATERMARK_CURSOR_INDEX_TEXT2_WIDTH:I = 0x16

.field private static final WATERMARK_CURSOR_INDEX_THUMBNAIL_RESOURCE_ID:I = 0x2


# instance fields
.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mDBObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "content://com.samsung.android.provider.stickerprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->URI_AUTHORITY:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 2
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 141
    new-instance v0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader$DBObserver;

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader$DBObserver;-><init>(Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mDBObserver:Landroid/database/ContentObserver;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method private checkUploadedStickerList()V
    .locals 3

    .prologue
    .line 372
    const-string v1, "PlugInStickerLoader"

    const-string v2, "checkUploadedStickerList"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 375
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.provider.stickerprovider.action.CHECK_UPLOADED_STICKER_LIST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string v1, "com.samsung.android.provider.stickerprovider"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 378
    return-void
.end method

.method public static syncUploadedStickerListDBWithServer(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stickerType"    # I

    .prologue
    .line 152
    const-string v1, "PlugInStickerLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncUploadedStickerListDBWithServer, stickerType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->setNewStickerUploadInfo(IZ)V

    .line 155
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 156
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.provider.stickerprovider"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v1, "com.samsung.android.provider.stickerprovider.action.SYNC_UPLOADED_STICKER_LIST_DB"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v1, "key_sticker_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 160
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->loadStickers()V

    .line 360
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized loadStickers()V
    .locals 53

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    const-string v1, "PlugInStickerLoader"

    const-string v9, "loadStickers - START"

    invoke-static {v1, v9}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v51, Ljava/util/LinkedHashMap;

    invoke-direct/range {v51 .. v51}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 166
    .local v51, "stickerPackageMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;>;"
    const/16 v50, 0x0

    .line 167
    .local v50, "stickerCount":I
    const/16 v8, 0x2710

    .line 168
    .local v8, "stickerCommandId":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v9, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->URI_AUTHORITY:Landroid/net/Uri;

    const-string v10, "path_query_installed_sticker_package"

    invoke-static {v9, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v46

    .local v46, "cursor":Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 169
    if-nez v46, :cond_a

    .line 170
    :try_start_2
    const-string v1, "PlugInStickerLoader"

    const-string v9, "return. cursor of package sticker info is null"

    invoke-static {v1, v9}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 227
    if-eqz v46, :cond_0

    if-eqz v17, :cond_9

    :try_start_3
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 347
    .end local v46    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 227
    .restart local v46    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    :try_start_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    .end local v46    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v47

    .line 228
    .local v47, "e":Ljava/lang/NullPointerException;
    :try_start_5
    const-string v1, "PlugInStickerLoader"

    const-string v9, "NullPointerException while loading sticker packages"

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 233
    .end local v47    # "e":Ljava/lang/NullPointerException;
    :cond_1
    :goto_1
    :try_start_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->URI_AUTHORITY:Landroid/net/Uri;

    const-string v10, "path_query_installed_face_ar"

    invoke-static {v1, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_e
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v46

    .restart local v46    # "cursor":Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 234
    :goto_2
    :try_start_7
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 236
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 233
    :catch_2
    move-exception v1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 248
    :catchall_0
    move-exception v9

    move-object/from16 v52, v9

    move-object v9, v1

    move-object/from16 v1, v52

    :goto_3
    if-eqz v46, :cond_2

    if-eqz v9, :cond_1c

    :try_start_9
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_2
    :goto_4
    :try_start_a
    throw v1
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_e
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .end local v46    # "cursor":Landroid/database/Cursor;
    :catch_3
    move-exception v47

    .line 249
    .restart local v47    # "e":Ljava/lang/NullPointerException;
    :try_start_b
    const-string v1, "PlugInStickerLoader"

    const-string v9, "NullPointerException while loading face AR"

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 254
    .end local v47    # "e":Ljava/lang/NullPointerException;
    :cond_3
    :goto_5
    :try_start_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->URI_AUTHORITY:Landroid/net/Uri;

    const-string v9, "path_query_installed_stamp"

    invoke-static {v1, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_11
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-result-object v46

    .restart local v46    # "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 255
    :goto_6
    :try_start_d
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 257
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 254
    :catch_4
    move-exception v1

    :try_start_e
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 270
    :catchall_1
    move-exception v9

    move-object/from16 v52, v9

    move-object v9, v1

    move-object/from16 v1, v52

    :goto_7
    if-eqz v46, :cond_4

    if-eqz v9, :cond_20

    :try_start_f
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_11
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :cond_4
    :goto_8
    :try_start_10
    throw v1
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_11
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .end local v46    # "cursor":Landroid/database/Cursor;
    :catch_5
    move-exception v47

    .line 271
    .restart local v47    # "e":Ljava/lang/NullPointerException;
    :try_start_11
    const-string v1, "PlugInStickerLoader"

    const-string v9, "NullPointerException while loading stamp"

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 276
    .end local v47    # "e":Ljava/lang/NullPointerException;
    :cond_5
    :goto_9
    :try_start_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->URI_AUTHORITY:Landroid/net/Uri;

    const-string v9, "path_query_installed_watermark"

    invoke-static {v1, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v21 .. v26}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_14
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move-result-object v46

    .restart local v46    # "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 277
    :goto_a
    :try_start_13
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 279
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 276
    :catch_6
    move-exception v1

    :try_start_14
    throw v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 331
    :catchall_2
    move-exception v9

    move-object/from16 v52, v9

    move-object v9, v1

    move-object/from16 v1, v52

    :goto_b
    if-eqz v46, :cond_6

    if-eqz v9, :cond_28

    :try_start_15
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_14
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :cond_6
    :goto_c
    :try_start_16
    throw v1
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_14
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .end local v46    # "cursor":Landroid/database/Cursor;
    :catch_7
    move-exception v47

    .line 332
    .restart local v47    # "e":Ljava/lang/NullPointerException;
    :try_start_17
    const-string v1, "PlugInStickerLoader"

    const-string v9, "NullPointerException while loading watermark"

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .end local v47    # "e":Ljava/lang/NullPointerException;
    :cond_7
    :goto_d
    invoke-static/range {v51 .. v51}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->refreshAllStickers(Ljava/util/LinkedHashMap;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v48

    .line 342
    .local v48, "mHandler":Landroid/os/Handler;
    if-eqz v48, :cond_8

    .line 343
    const/16 v1, 0x67

    move-object/from16 v0, v48

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 346
    :cond_8
    const-string v1, "PlugInStickerLoader"

    const-string v9, "loadStickers - END"

    invoke-static {v1, v9}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    goto/16 :goto_0

    .line 163
    .end local v8    # "stickerCommandId":I
    .end local v48    # "mHandler":Landroid/os/Handler;
    .end local v50    # "stickerCount":I
    .end local v51    # "stickerPackageMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;>;"
    :catchall_3
    move-exception v1

    monitor-exit p0

    throw v1

    .line 227
    .restart local v8    # "stickerCommandId":I
    .restart local v46    # "cursor":Landroid/database/Cursor;
    .restart local v50    # "stickerCount":I
    .restart local v51    # "stickerPackageMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;>;"
    :cond_9
    :try_start_18
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    goto/16 :goto_0

    .line 229
    .end local v46    # "cursor":Landroid/database/Cursor;
    :catch_8
    move-exception v47

    .line 230
    .local v47, "e":Ljava/lang/RuntimeException;
    :try_start_19
    const-string v1, "PlugInStickerLoader"

    const-string v9, "loading sticker packages is cancelled"

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    goto/16 :goto_1

    .line 174
    .end local v47    # "e":Ljava/lang/RuntimeException;
    .restart local v46    # "cursor":Landroid/database/Cursor;
    :cond_a
    :try_start_1a
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_c

    .line 175
    const-string v1, "PlugInStickerLoader"

    const-string v9, "Sticker DB is empty. Start service. Return."

    invoke-static {v1, v9}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v49, Landroid/content/Intent;

    invoke-direct/range {v49 .. v49}, Landroid/content/Intent;-><init>()V

    .line 177
    .local v49, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.provider.stickerprovider.action.REFRESH_STICKERS"

    move-object/from16 v0, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v1, "com.samsung.android.provider.stickerprovider"

    move-object/from16 v0, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v49

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    .line 227
    if-eqz v46, :cond_0

    if-eqz v17, :cond_b

    :try_start_1b
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_1b} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_8
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    goto/16 :goto_0

    :catch_9
    move-exception v1

    :try_start_1c
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_b
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_1c} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_8
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    goto/16 :goto_0

    .line 183
    .end local v49    # "serviceIntent":Landroid/content/Intent;
    :cond_c
    :try_start_1d
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->COUNTRY_CHINA:Z

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isNetworkPermissionEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 184
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->checkUploadedStickerList()V

    .line 188
    :cond_e
    :goto_e
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 190
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_a
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    .line 168
    :catch_a
    move-exception v1

    :try_start_1e
    throw v1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    .line 227
    :catchall_4
    move-exception v9

    move-object/from16 v52, v9

    move-object v9, v1

    move-object/from16 v1, v52

    :goto_f
    if-eqz v46, :cond_f

    if-eqz v9, :cond_18

    :try_start_1f
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_1f} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_8
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    :cond_f
    :goto_10
    :try_start_20
    throw v1
    :try_end_20
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_20} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_8
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    .line 193
    :cond_10
    const/4 v1, 0x0

    :try_start_21
    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, "packageName":Ljava/lang/String;
    const/4 v1, 0x1

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v9, "true"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v4, 0x1

    .line 195
    .local v4, "isPreloaded":Z
    :goto_11
    const/4 v1, 0x2

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 196
    .local v5, "representativeNormalResId":I
    const/4 v1, 0x3

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 198
    .local v6, "representativePressedResId":I
    const/4 v1, 0x4

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 200
    .local v7, "mainOrder":I
    const-string v1, "com.samsung.android.app.camera.sticker.facear"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 201
    const/4 v2, 0x1

    .line 202
    .local v2, "stickerType":I
    if-eqz v4, :cond_11

    .line 203
    const/16 v8, 0x2713

    .line 219
    :cond_11
    :goto_12
    if-eqz v4, :cond_15

    .line 220
    new-instance v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;-><init>(ILjava/lang/String;ZIIII)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 227
    .end local v2    # "stickerType":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "isPreloaded":Z
    .end local v5    # "representativeNormalResId":I
    .end local v6    # "representativePressedResId":I
    .end local v7    # "mainOrder":I
    :catchall_5
    move-exception v1

    move-object/from16 v9, v17

    goto :goto_f

    .line 194
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_12
    const/4 v4, 0x0

    goto :goto_11

    .line 205
    .restart local v4    # "isPreloaded":Z
    .restart local v5    # "representativeNormalResId":I
    .restart local v6    # "representativePressedResId":I
    .restart local v7    # "mainOrder":I
    :cond_13
    const-string v1, "com.samsung.android.app.camera.sticker.stamp"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 206
    const/4 v2, 0x2

    .line 207
    .restart local v2    # "stickerType":I
    if-eqz v4, :cond_11

    .line 208
    const/16 v8, 0x2711

    goto :goto_12

    .line 210
    .end local v2    # "stickerType":I
    :cond_14
    const-string v1, "com.samsung.android.app.camera.sticker.watermark"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 211
    const/4 v2, 0x3

    .line 212
    .restart local v2    # "stickerType":I
    if-eqz v4, :cond_11

    .line 213
    const/16 v8, 0x2712

    goto :goto_12

    .line 223
    :cond_15
    new-instance v9, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    add-int/lit8 v50, v50, 0x1

    add-int v16, v8, v50

    move v10, v2

    move-object v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-direct/range {v9 .. v16}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;-><init>(ILjava/lang/String;ZIIII)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v3, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_a
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    goto/16 :goto_e

    .line 227
    .end local v2    # "stickerType":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "isPreloaded":Z
    .end local v5    # "representativeNormalResId":I
    .end local v6    # "representativePressedResId":I
    .end local v7    # "mainOrder":I
    :cond_16
    if-eqz v46, :cond_1

    if-eqz v17, :cond_17

    :try_start_22
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_22} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_8
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    goto/16 :goto_1

    :catch_b
    move-exception v1

    :try_start_23
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_17
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catch_c
    move-exception v10

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_10

    :cond_18
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_23
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_23} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_8
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    goto/16 :goto_10

    .line 239
    :cond_19
    const/4 v1, 0x0

    :try_start_24
    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 240
    .restart local v3    # "packageName":Ljava/lang/String;
    const/4 v1, 0x1

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 241
    .local v11, "stickerName":Ljava/lang/String;
    const/4 v1, 0x2

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 242
    .local v12, "thumbnailResId":I
    const/4 v1, 0x3

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 243
    .local v13, "sceneType":Ljava/lang/String;
    const/4 v1, 0x4

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 245
    .local v14, "subOrder":I
    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    new-instance v9, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$FaceARInfo;

    add-int/lit8 v50, v50, 0x1

    add-int v15, v8, v50

    move-object v10, v3

    invoke-direct/range {v9 .. v15}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$FaceARInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    invoke-virtual {v1, v11, v9}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->addSticker(Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_2
    .catchall {:try_start_24 .. :try_end_24} :catchall_6

    goto/16 :goto_2

    .line 248
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v11    # "stickerName":Ljava/lang/String;
    .end local v12    # "thumbnailResId":I
    .end local v13    # "sceneType":Ljava/lang/String;
    .end local v14    # "subOrder":I
    :catchall_6
    move-exception v1

    move-object/from16 v9, v16

    goto/16 :goto_3

    :cond_1a
    if-eqz v46, :cond_3

    if-eqz v16, :cond_1b

    :try_start_25
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_25} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_e
    .catchall {:try_start_25 .. :try_end_25} :catchall_3

    goto/16 :goto_5

    :catch_d
    move-exception v1

    :try_start_26
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_26
    .catch Ljava/lang/NullPointerException; {:try_start_26 .. :try_end_26} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_e
    .catchall {:try_start_26 .. :try_end_26} :catchall_3

    goto/16 :goto_5

    .line 250
    .end local v46    # "cursor":Landroid/database/Cursor;
    :catch_e
    move-exception v47

    .line 251
    .restart local v47    # "e":Ljava/lang/RuntimeException;
    :try_start_27
    const-string v1, "PlugInStickerLoader"

    const-string v9, "loading face AR is cancelled"

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_3

    goto/16 :goto_5

    .line 248
    .end local v47    # "e":Ljava/lang/RuntimeException;
    .restart local v46    # "cursor":Landroid/database/Cursor;
    :cond_1b
    :try_start_28
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    :catch_f
    move-exception v10

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_1c
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_28
    .catch Ljava/lang/NullPointerException; {:try_start_28 .. :try_end_28} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_28} :catch_e
    .catchall {:try_start_28 .. :try_end_28} :catchall_3

    goto/16 :goto_4

    .line 260
    :cond_1d
    const/4 v1, 0x0

    :try_start_29
    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 261
    .restart local v3    # "packageName":Ljava/lang/String;
    const/4 v1, 0x1

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 262
    .restart local v11    # "stickerName":Ljava/lang/String;
    const/4 v1, 0x2

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 263
    .restart local v12    # "thumbnailResId":I
    const/4 v1, 0x3

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 264
    .local v19, "previewResWidth":I
    const/4 v1, 0x4

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 265
    .local v20, "previewResHeight":I
    const/4 v1, 0x5

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 267
    .restart local v14    # "subOrder":I
    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    new-instance v15, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StampInfo;

    add-int/lit8 v50, v50, 0x1

    add-int v22, v8, v50

    move-object/from16 v16, v3

    move-object/from16 v17, v11

    move/from16 v18, v12

    move/from16 v21, v14

    invoke-direct/range {v15 .. v22}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StampInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v1, v11, v15}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->addSticker(Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_4
    .catchall {:try_start_29 .. :try_end_29} :catchall_7

    goto/16 :goto_6

    .line 270
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v11    # "stickerName":Ljava/lang/String;
    .end local v12    # "thumbnailResId":I
    .end local v14    # "subOrder":I
    .end local v19    # "previewResWidth":I
    .end local v20    # "previewResHeight":I
    :catchall_7
    move-exception v1

    goto/16 :goto_7

    :cond_1e
    if-eqz v46, :cond_5

    if-eqz v9, :cond_1f

    :try_start_2a
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_2a .. :try_end_2a} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2a} :catch_11
    .catchall {:try_start_2a .. :try_end_2a} :catchall_3

    goto/16 :goto_9

    :catch_10
    move-exception v1

    :try_start_2b
    invoke-virtual {v9, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2b
    .catch Ljava/lang/NullPointerException; {:try_start_2b .. :try_end_2b} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2b} :catch_11
    .catchall {:try_start_2b .. :try_end_2b} :catchall_3

    goto/16 :goto_9

    .line 272
    .end local v46    # "cursor":Landroid/database/Cursor;
    :catch_11
    move-exception v47

    .line 273
    .restart local v47    # "e":Ljava/lang/RuntimeException;
    :try_start_2c
    const-string v1, "PlugInStickerLoader"

    const-string v9, "loading stamp is cancelled"

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_3

    goto/16 :goto_9

    .line 270
    .end local v47    # "e":Ljava/lang/RuntimeException;
    .restart local v46    # "cursor":Landroid/database/Cursor;
    :cond_1f
    :try_start_2d
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V

    goto/16 :goto_9

    :catch_12
    move-exception v10

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :cond_20
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_2d
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_2d} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_2d} :catch_11
    .catchall {:try_start_2d .. :try_end_2d} :catchall_3

    goto/16 :goto_8

    .line 282
    :cond_21
    const/4 v1, 0x2

    :try_start_2e
    new-array v0, v1, [Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;

    move-object/from16 v43, v0

    const/4 v1, 0x0

    const/4 v10, 0x0

    aput-object v10, v43, v1

    const/4 v1, 0x1

    const/4 v10, 0x0

    aput-object v10, v43, v1

    .line 284
    .local v43, "watermarkTextInfo":[Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;
    const/4 v1, 0x0

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 285
    .restart local v3    # "packageName":Ljava/lang/String;
    const/4 v1, 0x1

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 286
    .restart local v11    # "stickerName":Ljava/lang/String;
    const/4 v1, 0x2

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 287
    .restart local v12    # "thumbnailResId":I
    const/4 v1, 0x3

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    .line 288
    .local v39, "previewResId":I
    const/4 v1, 0x4

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 289
    .restart local v19    # "previewResWidth":I
    const/4 v1, 0x5

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 290
    .restart local v20    # "previewResHeight":I
    const/4 v1, 0x6

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    .line 292
    .local v42, "captureResId":I
    const/4 v1, 0x7

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v22

    .line 293
    .local v22, "textLeft":F
    const/16 v1, 0x8

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v23

    .line 294
    .local v23, "textTop":F
    const/16 v1, 0x9

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v24

    .line 295
    .local v24, "textWidth":F
    const/16 v1, 0xa

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v25

    .line 296
    .local v25, "textHeight":F
    const/16 v1, 0xb

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v10, "true"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v26, 0x1

    .line 297
    .local v26, "isEditable":Z
    :goto_13
    const/16 v1, 0xc

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v10, "true"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/16 v27, 0x1

    .line 298
    .local v27, "isVertical":Z
    :goto_14
    const/16 v1, 0xd

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 299
    .local v28, "defaultText":Ljava/lang/String;
    const/16 v1, 0xe

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 300
    .local v29, "textType":I
    const/16 v1, 0xf

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v30

    .line 301
    .local v30, "fontSize":F
    const/16 v1, 0x10

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 302
    .local v31, "textFont":I
    const/16 v1, 0x11

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 303
    .local v32, "textColor":I
    const/16 v1, 0x12

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 304
    .local v33, "hAlign":I
    const/16 v1, 0x13

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 306
    .local v34, "vAlign":I
    const/4 v1, 0x0

    new-instance v21, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;

    invoke-direct/range {v21 .. v34}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;-><init>(FFFFZZLjava/lang/String;IFIIII)V

    aput-object v21, v43, v1

    .line 309
    const/16 v1, 0x14

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v22

    .line 310
    const/16 v1, 0x15

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v23

    .line 311
    const/16 v1, 0x16

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v24

    .line 312
    const/16 v1, 0x17

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v25

    .line 313
    const/16 v1, 0x18

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v10, "true"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/16 v26, 0x1

    .line 314
    :goto_15
    const/16 v1, 0x19

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v10, "true"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v27, 0x1

    .line 315
    :goto_16
    const/16 v1, 0x1a

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 316
    const/16 v1, 0x1b

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 317
    const/16 v1, 0x1c

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v30

    .line 318
    const/16 v1, 0x1d

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 319
    const/16 v1, 0x1e

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 320
    const/16 v1, 0x1f

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 321
    const/16 v1, 0x20

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 323
    const/4 v1, 0x1

    new-instance v21, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;

    invoke-direct/range {v21 .. v34}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;-><init>(FFFFZZLjava/lang/String;IFIIII)V

    aput-object v21, v43, v1

    .line 326
    const/16 v1, 0x21

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 328
    .restart local v14    # "subOrder":I
    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    new-instance v35, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;

    add-int/lit8 v50, v50, 0x1

    add-int v45, v8, v50

    move-object/from16 v36, v3

    move-object/from16 v37, v11

    move/from16 v38, v12

    move/from16 v40, v19

    move/from16 v41, v20

    move/from16 v44, v14

    invoke-direct/range {v35 .. v45}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII[Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;II)V

    move-object/from16 v0, v35

    invoke-virtual {v1, v11, v0}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->addSticker(Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_6
    .catchall {:try_start_2e .. :try_end_2e} :catchall_8

    goto/16 :goto_a

    .line 331
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v11    # "stickerName":Ljava/lang/String;
    .end local v12    # "thumbnailResId":I
    .end local v14    # "subOrder":I
    .end local v19    # "previewResWidth":I
    .end local v20    # "previewResHeight":I
    .end local v22    # "textLeft":F
    .end local v23    # "textTop":F
    .end local v24    # "textWidth":F
    .end local v25    # "textHeight":F
    .end local v26    # "isEditable":Z
    .end local v27    # "isVertical":Z
    .end local v28    # "defaultText":Ljava/lang/String;
    .end local v29    # "textType":I
    .end local v30    # "fontSize":F
    .end local v31    # "textFont":I
    .end local v32    # "textColor":I
    .end local v33    # "hAlign":I
    .end local v34    # "vAlign":I
    .end local v39    # "previewResId":I
    .end local v42    # "captureResId":I
    .end local v43    # "watermarkTextInfo":[Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;
    :catchall_8
    move-exception v1

    goto/16 :goto_b

    .line 296
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v11    # "stickerName":Ljava/lang/String;
    .restart local v12    # "thumbnailResId":I
    .restart local v19    # "previewResWidth":I
    .restart local v20    # "previewResHeight":I
    .restart local v22    # "textLeft":F
    .restart local v23    # "textTop":F
    .restart local v24    # "textWidth":F
    .restart local v25    # "textHeight":F
    .restart local v39    # "previewResId":I
    .restart local v42    # "captureResId":I
    .restart local v43    # "watermarkTextInfo":[Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;
    :cond_22
    const/16 v26, 0x0

    goto/16 :goto_13

    .line 297
    .restart local v26    # "isEditable":Z
    :cond_23
    const/16 v27, 0x0

    goto/16 :goto_14

    .line 313
    .restart local v27    # "isVertical":Z
    .restart local v28    # "defaultText":Ljava/lang/String;
    .restart local v29    # "textType":I
    .restart local v30    # "fontSize":F
    .restart local v31    # "textFont":I
    .restart local v32    # "textColor":I
    .restart local v33    # "hAlign":I
    .restart local v34    # "vAlign":I
    :cond_24
    const/16 v26, 0x0

    goto/16 :goto_15

    .line 314
    :cond_25
    const/16 v27, 0x0

    goto :goto_16

    .line 331
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v11    # "stickerName":Ljava/lang/String;
    .end local v12    # "thumbnailResId":I
    .end local v19    # "previewResWidth":I
    .end local v20    # "previewResHeight":I
    .end local v22    # "textLeft":F
    .end local v23    # "textTop":F
    .end local v24    # "textWidth":F
    .end local v25    # "textHeight":F
    .end local v26    # "isEditable":Z
    .end local v27    # "isVertical":Z
    .end local v28    # "defaultText":Ljava/lang/String;
    .end local v29    # "textType":I
    .end local v30    # "fontSize":F
    .end local v31    # "textFont":I
    .end local v32    # "textColor":I
    .end local v33    # "hAlign":I
    .end local v34    # "vAlign":I
    .end local v39    # "previewResId":I
    .end local v42    # "captureResId":I
    .end local v43    # "watermarkTextInfo":[Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;
    :cond_26
    if-eqz v46, :cond_7

    if-eqz v9, :cond_27

    :try_start_2f
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_2f .. :try_end_2f} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_2f} :catch_14
    .catchall {:try_start_2f .. :try_end_2f} :catchall_3

    goto/16 :goto_d

    :catch_13
    move-exception v1

    :try_start_30
    invoke-virtual {v9, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_30
    .catch Ljava/lang/NullPointerException; {:try_start_30 .. :try_end_30} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_30} :catch_14
    .catchall {:try_start_30 .. :try_end_30} :catchall_3

    goto/16 :goto_d

    .line 333
    .end local v46    # "cursor":Landroid/database/Cursor;
    :catch_14
    move-exception v47

    .line 334
    .restart local v47    # "e":Ljava/lang/RuntimeException;
    :try_start_31
    const-string v1, "PlugInStickerLoader"

    const-string v9, "loading watermark is cancelled"

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_3

    goto/16 :goto_d

    .line 331
    .end local v47    # "e":Ljava/lang/RuntimeException;
    .restart local v46    # "cursor":Landroid/database/Cursor;
    :cond_27
    :try_start_32
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V

    goto/16 :goto_d

    :catch_15
    move-exception v10

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_c

    :cond_28
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_32
    .catch Ljava/lang/NullPointerException; {:try_start_32 .. :try_end_32} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_32} :catch_14
    .catchall {:try_start_32 .. :try_end_32} :catchall_3

    goto/16 :goto_c
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 365
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Void;

    .prologue
    .line 369
    return-void
.end method

.method public declared-synchronized registerObserver()V
    .locals 4

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->URI_AUTHORITY:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mDBObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    monitor-exit p0

    return-void

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterObserver()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mDBObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 355
    return-void
.end method
