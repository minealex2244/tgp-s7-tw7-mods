.class Lcom/android/launcher3/home/HomeItemPositionHelper;
.super Ljava/lang/Object;
.source "HomeItemPositionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeItemPositionHelper"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mPreservedPosList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeItemPositionHelper;->mPreservedPosList:Ljava/util/ArrayList;

    .line 41
    iput-object p1, p0, Lcom/android/launcher3/home/HomeItemPositionHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 42
    return-void
.end method

.method private checkNearVacantCell(Ljava/util/Queue;[[I[IIIIIII[[Z)Z
    .locals 6
    .param p2, "visit"    # [[I
    .param p3, "vacant"    # [I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "spanX"    # I
    .param p7, "spanY"    # I
    .param p8, "xCount"    # I
    .param p9, "yCount"    # I
    .param p10, "occupied"    # [[Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;[[I[IIIIIII[[Z)Z"
        }
    .end annotation

    .prologue
    .line 402
    .local p1, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Integer;>;"
    const/4 v4, 0x1

    if-gt p6, v4, :cond_0

    const/4 v4, 0x1

    if-le p7, v4, :cond_3

    :cond_0
    const/4 v3, 0x1

    .line 404
    .local v3, "needCheckSpan":Z
    :goto_0
    invoke-direct {p0, p4, p5, p8, p9}, Lcom/android/launcher3/home/HomeItemPositionHelper;->in(IIII)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 405
    aget-object v4, p2, p4

    aget v4, v4, p5

    if-nez v4, :cond_9

    .line 406
    aget-object v4, p10, p4

    aget-boolean v4, v4, p5

    if-nez v4, :cond_4

    const/4 v0, 0x1

    .line 407
    .local v0, "available":Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 408
    add-int v4, p4, p6

    if-gt v4, p8, :cond_1

    add-int v4, p5, p7

    if-le v4, p9, :cond_5

    .line 409
    :cond_1
    const/4 v0, 0x0

    .line 422
    :cond_2
    if-eqz v0, :cond_8

    .line 423
    const/4 v4, 0x0

    aput p4, p3, v4

    .line 424
    const/4 v4, 0x1

    aput p5, p3, v4

    .line 425
    const/4 v4, 0x1

    .line 434
    .end local v0    # "available":Z
    :goto_2
    return v4

    .line 402
    .end local v3    # "needCheckSpan":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 406
    .restart local v3    # "needCheckSpan":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 412
    .restart local v0    # "available":Z
    :cond_5
    move v1, p4

    .local v1, "i":I
    :goto_3
    add-int v4, p4, p6

    if-ge v1, v4, :cond_2

    if-ge v1, p8, :cond_2

    .line 413
    move v2, p5

    .local v2, "j":I
    :goto_4
    add-int v4, p5, p7

    if-ge v2, v4, :cond_7

    if-ge v2, p9, :cond_7

    .line 414
    if-eqz v0, :cond_6

    aget-object v4, p10, v1

    aget-boolean v4, v4, v2

    if-nez v4, :cond_6

    const/4 v0, 0x1

    .line 415
    :goto_5
    if-eqz v0, :cond_2

    .line 413
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 414
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 412
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 427
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_8
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 429
    aget-object v4, p2, p4

    const/4 v5, 0x1

    aput v5, v4, p5

    .line 434
    .end local v0    # "available":Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private findNearEmptyCell([IJIIII)Z
    .locals 10
    .param p1, "xy"    # [I
    .param p2, "screenId"    # J
    .param p4, "itemSpanX"    # I
    .param p5, "itemSpanY"    # I
    .param p6, "fromX"    # I
    .param p7, "fromY"    # I

    .prologue
    .line 186
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v9

    .line 187
    .local v9, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    iget-object v0, v9, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v6

    .line 188
    .local v6, "xCount":I
    iget-object v0, v9, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v7

    .line 190
    .local v7, "yCount":I
    invoke-direct {p0, p2, p3, v6, v7}, Lcom/android/launcher3/home/HomeItemPositionHelper;->getOccupiedTable(JII)[[Z

    move-result-object v8

    .local v8, "occupied":[[Z
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p6

    move/from16 v3, p7

    move v4, p4

    move v5, p5

    .line 191
    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findNearVacantCell([IIIIIII[[Z)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized findVacantCell([IIIII[[Z)Z
    .locals 9
    .param p1, "vacant"    # [I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I
    .param p4, "xCount"    # I
    .param p5, "yCount"    # I
    .param p6, "occupied"    # [[Z

    .prologue
    .line 313
    monitor-enter p0

    if-nez p6, :cond_0

    .line 314
    const/4 v6, 0x0

    .line 346
    :goto_0
    monitor-exit p0

    return v6

    .line 315
    :cond_0
    :try_start_0
    array-length v6, p6

    if-ne v6, p4, :cond_1

    array-length v6, p6

    if-lez v6, :cond_2

    const/4 v6, 0x0

    aget-object v6, p6, v6

    array-length v6, v6

    if-eq v6, p5, :cond_2

    .line 316
    :cond_1
    const-string v6, "HomeItemPositionHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "findVacantCell size isn\'t matched with array. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, p6, v8

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v6, 0x0

    goto :goto_0

    .line 322
    :cond_2
    const/4 v3, 0x0

    .line 323
    .local v3, "vacantSize":I
    const/4 v5, 0x0

    .local v5, "y":I
    :goto_1
    if-ge v5, p5, :cond_a

    .line 324
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_2
    if-ge v4, p4, :cond_9

    .line 325
    aget-object v6, p6, v4

    aget-boolean v6, v6, v5

    if-nez v6, :cond_4

    const/4 v0, 0x1

    .line 326
    .local v0, "available":Z
    :goto_3
    const/4 v3, 0x0

    .line 327
    move v1, v4

    .local v1, "i":I
    :goto_4
    add-int v6, v4, p2

    if-ge v1, v6, :cond_3

    if-ge v1, p4, :cond_3

    .line 328
    move v2, v5

    .local v2, "j":I
    :goto_5
    add-int v6, v5, p3

    if-ge v2, v6, :cond_7

    if-ge v2, p5, :cond_7

    .line 329
    if-eqz v0, :cond_5

    aget-object v6, p6, v1

    aget-boolean v6, v6, v2

    if-nez v6, :cond_5

    const/4 v0, 0x1

    .line 330
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 331
    if-nez v0, :cond_6

    .line 332
    const/4 v3, 0x0

    .line 338
    .end local v2    # "j":I
    :cond_3
    mul-int v6, p2, p3

    if-ne v3, v6, :cond_8

    .line 339
    const/4 v6, 0x0

    aput v4, p1, v6

    .line 340
    const/4 v6, 0x1

    aput v5, p1, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 325
    .end local v0    # "available":Z
    .end local v1    # "i":I
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 329
    .restart local v0    # "available":Z
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    :cond_5
    const/4 v0, 0x0

    goto :goto_6

    .line 328
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 327
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 324
    .end local v2    # "j":I
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 323
    .end local v0    # "available":Z
    .end local v1    # "i":I
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 346
    .end local v4    # "x":I
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 313
    .end local v3    # "vacantSize":I
    .end local v5    # "y":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private findVacantCell([IIIII[[ZZ)Z
    .locals 8
    .param p1, "vacant"    # [I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I
    .param p4, "xCount"    # I
    .param p5, "yCount"    # I
    .param p6, "occupied"    # [[Z
    .param p7, "lastPosition"    # Z

    .prologue
    .line 251
    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, p1, v6

    .line 252
    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, p1, v6

    .line 253
    const/4 v3, 0x0

    .line 255
    .local v3, "offsetY":I
    if-eqz p7, :cond_9

    .line 257
    add-int/lit8 v5, p5, -0x1

    .local v5, "y":I
    :goto_0
    if-ltz v5, :cond_0

    .line 258
    add-int/lit8 v4, p4, -0x1

    .local v4, "x":I
    :goto_1
    if-ltz v4, :cond_8

    .line 260
    aget-object v6, p6, v4

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_7

    .line 261
    const/4 v6, 0x1

    if-le p2, v6, :cond_4

    .line 262
    const/4 v7, 0x0

    add-int v6, v4, p2

    if-lt v6, p4, :cond_2

    const/4 v6, 0x0

    :goto_2
    aput v6, p1, v7

    .line 263
    const/4 v7, 0x1

    add-int v6, v4, p2

    if-lt v6, p4, :cond_3

    add-int/lit8 v6, v5, 0x1

    :goto_3
    aput v6, p1, v7

    .line 272
    .end local v4    # "x":I
    :cond_0
    :goto_4
    const/4 v6, 0x1

    if-le p3, v6, :cond_1

    .line 273
    add-int/lit8 v3, p3, -0x1

    .line 297
    :cond_1
    if-eqz p7, :cond_11

    const/4 v6, 0x1

    aget v6, p1, v6

    add-int/2addr v6, v3

    if-ge v6, p5, :cond_11

    const/4 v6, 0x1

    :goto_5
    return v6

    .line 262
    .restart local v4    # "x":I
    :cond_2
    add-int/lit8 v6, v4, 0x1

    goto :goto_2

    :cond_3
    move v6, v5

    .line 263
    goto :goto_3

    .line 265
    :cond_4
    const/4 v7, 0x0

    add-int/lit8 v6, v4, 0x1

    if-ne v6, p4, :cond_5

    const/4 v6, 0x0

    :goto_6
    aput v6, p1, v7

    .line 266
    const/4 v7, 0x1

    add-int/lit8 v6, v4, 0x1

    if-ne v6, p4, :cond_6

    add-int/lit8 v6, v5, 0x1

    :goto_7
    aput v6, p1, v7

    goto :goto_4

    .line 265
    :cond_5
    add-int/lit8 v6, v4, 0x1

    goto :goto_6

    :cond_6
    move v6, v5

    .line 266
    goto :goto_7

    .line 258
    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 257
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 276
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_9
    const/4 v5, 0x0

    .restart local v5    # "y":I
    :goto_8
    add-int v6, v5, p3

    if-gt v6, p5, :cond_1

    .line 277
    const/4 v4, 0x0

    .restart local v4    # "x":I
    :goto_9
    add-int v6, v4, p2

    if-gt v6, p4, :cond_10

    .line 278
    aget-object v6, p6, v4

    aget-boolean v6, v6, v5

    if-nez v6, :cond_b

    const/4 v0, 0x1

    .line 281
    .local v0, "available":Z
    :goto_a
    move v1, v4

    .local v1, "i":I
    :goto_b
    add-int v6, v4, p2

    if-ge v1, v6, :cond_a

    .line 282
    move v2, v5

    .local v2, "j":I
    :goto_c
    add-int v6, v5, p3

    if-ge v2, v6, :cond_e

    .line 283
    if-eqz v0, :cond_c

    aget-object v6, p6, v1

    aget-boolean v6, v6, v2

    if-nez v6, :cond_c

    const/4 v0, 0x1

    .line 284
    :goto_d
    if-nez v0, :cond_d

    .line 288
    .end local v2    # "j":I
    :cond_a
    if-eqz v0, :cond_f

    .line 289
    const/4 v6, 0x0

    aput v4, p1, v6

    .line 290
    const/4 v6, 0x1

    aput v5, p1, v6

    .line 291
    const/4 v6, 0x1

    goto :goto_5

    .line 278
    .end local v0    # "available":Z
    .end local v1    # "i":I
    :cond_b
    const/4 v0, 0x0

    goto :goto_a

    .line 283
    .restart local v0    # "available":Z
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    :cond_c
    const/4 v0, 0x0

    goto :goto_d

    .line 282
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 281
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 277
    .end local v2    # "j":I
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 276
    .end local v0    # "available":Z
    .end local v1    # "i":I
    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 297
    .end local v4    # "x":I
    :cond_11
    const/4 v6, 0x0

    goto :goto_5
.end method

.method private getItemsInLocalCoordinates(JJ)Ljava/util/ArrayList;
    .locals 17
    .param p1, "container"    # J
    .param p3, "screenId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v13, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v8, 0x0

    .line 199
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeItemPositionHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "cellX"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "cellY"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "spanX"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "spanY"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "festival"

    aput-object v6, v4, v5

    const-string v5, "container=? and screen=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 207
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    .line 199
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 210
    if-eqz v8, :cond_1

    .line 211
    const-string v2, "cellX"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 212
    .local v9, "cellXIndex":I
    const-string v2, "cellY"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 213
    .local v10, "cellYIndex":I
    const-string v2, "spanX"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 214
    .local v14, "spanXIndex":I
    const-string v2, "spanY"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 216
    .local v15, "spanYIndex":I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    new-instance v12, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {v12}, Lcom/android/launcher3/common/base/item/ItemInfo;-><init>()V

    .line 218
    .local v12, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-wide/from16 v0, p1

    iput-wide v0, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 219
    move-wide/from16 v0, p3

    iput-wide v0, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 220
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 221
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 222
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 223
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    .line 225
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 228
    .end local v9    # "cellXIndex":I
    .end local v10    # "cellYIndex":I
    .end local v12    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v14    # "spanXIndex":I
    .end local v15    # "spanYIndex":I
    :catch_0
    move-exception v11

    .line 229
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 230
    const-string v2, "HomeItemPositionHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getItemsInLocalCoordinates : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    if-eqz v8, :cond_0

    .line 233
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 237
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v13

    .line 232
    :cond_1
    if-eqz v8, :cond_0

    .line 233
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 232
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_2

    .line 233
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method private getOccupiedTable(JII)[[Z
    .locals 21
    .param p1, "screenId"    # J
    .param p3, "xCount"    # I
    .param p4, "yCount"    # I

    .prologue
    .line 149
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v8, v0, [I

    .line 150
    .local v8, "gridSize":[I
    const/16 v17, 0x0

    aput p3, v8, v17

    .line 151
    const/16 v17, 0x1

    aput p4, v8, v17

    .line 153
    const/16 v17, 0x0

    aget v17, v8, v17

    const/16 v18, 0x1

    aget v18, v8, v18

    filled-new-array/range {v17 .. v18}, [I

    move-result-object v17

    sget-object v18, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[Z

    .line 155
    .local v11, "occupied":[[Z
    const-wide/16 v18, -0x64

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/HomeItemPositionHelper;->getItemsInLocalCoordinates(JJ)Ljava/util/ArrayList;

    move-result-object v10

    .line 158
    .local v10, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 159
    .local v9, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v6, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 160
    .local v6, "cellX":I
    iget v7, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 161
    .local v7, "cellY":I
    iget v13, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 162
    .local v13, "spanX":I
    iget v14, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    .line 163
    .local v14, "spanY":I
    move v15, v6

    .local v15, "x":I
    :goto_0
    add-int v18, v6, v13

    move/from16 v0, v18

    if-ge v15, v0, :cond_0

    const/16 v18, 0x0

    aget v18, v8, v18

    move/from16 v0, v18

    if-ge v15, v0, :cond_0

    .line 164
    move/from16 v16, v7

    .local v16, "y":I
    :goto_1
    add-int v18, v7, v14

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    const/16 v18, 0x1

    aget v18, v8, v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 165
    aget-object v18, v11, v15

    const/16 v19, 0x1

    aput-boolean v19, v18, v16

    .line 164
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 163
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 170
    .end local v6    # "cellX":I
    .end local v7    # "cellY":I
    .end local v9    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v13    # "spanX":I
    .end local v14    # "spanY":I
    .end local v15    # "x":I
    .end local v16    # "y":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeItemPositionHelper;->mPreservedPosList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_5

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeItemPositionHelper;->mPreservedPosList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;

    .line 172
    .local v12, "p":Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;
    iget-wide v0, v12, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;->screenId:J

    move-wide/from16 v18, v0

    cmp-long v18, p1, v18

    if-nez v18, :cond_3

    .line 173
    iget v15, v12, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;->x:I

    .restart local v15    # "x":I
    :goto_2
    iget v0, v12, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;->x:I

    move/from16 v18, v0

    iget v0, v12, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;->spanX:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    if-ge v15, v0, :cond_3

    const/16 v18, 0x0

    aget v18, v8, v18

    move/from16 v0, v18

    if-ge v15, v0, :cond_3

    .line 174
    iget v0, v12, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;->y:I

    move/from16 v16, v0

    .restart local v16    # "y":I
    :goto_3
    iget v0, v12, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;->y:I

    move/from16 v18, v0

    iget v0, v12, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;->spanY:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    const/16 v18, 0x1

    aget v18, v8, v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 175
    aget-object v18, v11, v15

    const/16 v19, 0x1

    aput-boolean v19, v18, v16

    .line 174
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 173
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 182
    .end local v12    # "p":Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;
    .end local v15    # "x":I
    .end local v16    # "y":I
    :cond_5
    return-object v11
.end method

.method private in(IIII)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "xCount"    # I
    .param p4, "yCount"    # I

    .prologue
    .line 438
    if-ltz p1, :cond_0

    if-ge p1, p3, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method addToPreservedPosition(JII)V
    .locals 9
    .param p1, "screenId"    # J
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    const/4 v6, 0x1

    .line 140
    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/home/HomeItemPositionHelper;->addToPreservedPosition(JIIII)V

    .line 141
    return-void
.end method

.method addToPreservedPosition(JIIII)V
    .locals 9
    .param p1, "screenId"    # J
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I

    .prologue
    .line 144
    new-instance v1, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;-><init>(JIIII)V

    .line 145
    .local v1, "info":Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;
    iget-object v0, p0, Lcom/android/launcher3/home/HomeItemPositionHelper;->mPreservedPosList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method clearPreservedPosition()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/launcher3/home/HomeItemPositionHelper;->mPreservedPosList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 137
    return-void
.end method

.method findEmptyCell([IJII)Z
    .locals 8
    .param p1, "xy"    # [I
    .param p2, "screenId"    # J
    .param p4, "itemSpanX"    # I
    .param p5, "itemSpanY"    # I

    .prologue
    .line 88
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findEmptyCell([IJIIZ)Z

    move-result v0

    return v0
.end method

.method findEmptyCell([IJIIZ)Z
    .locals 10
    .param p1, "xy"    # [I
    .param p2, "screenId"    # J
    .param p4, "itemSpanX"    # I
    .param p5, "itemSpanY"    # I
    .param p6, "checkOccupy"    # Z

    .prologue
    .line 92
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v7

    .line 93
    .local v7, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    iget-object v0, v7, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    .line 94
    .local v4, "xCount":I
    iget-object v0, v7, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v5

    .line 96
    .local v5, "yCount":I
    invoke-direct {p0, p2, p3, v4, v5}, Lcom/android/launcher3/home/HomeItemPositionHelper;->getOccupiedTable(JII)[[Z

    move-result-object v6

    .line 97
    .local v6, "occupied":[[Z
    if-eqz p6, :cond_4

    .line 98
    const/4 v0, 0x1

    if-gt p4, v0, :cond_1

    const/4 v0, 0x1

    if-gt p5, v0, :cond_1

    .line 99
    const/4 v0, 0x0

    aget v0, p1, v0

    aget-object v0, v6, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 101
    :cond_1
    const/4 v0, 0x0

    aget v8, p1, v0

    .local v8, "x":I
    :goto_1
    const/4 v0, 0x0

    aget v0, p1, v0

    add-int/2addr v0, p4

    if-ge v8, v0, :cond_4

    .line 102
    const/4 v0, 0x1

    aget v9, p1, v0

    .local v9, "y":I
    :goto_2
    const/4 v0, 0x1

    aget v0, p1, v0

    add-int/2addr v0, p5

    if-ge v9, v0, :cond_3

    .line 103
    aget-object v0, v6, v8

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_2

    .line 104
    const/4 v0, 0x0

    goto :goto_0

    .line 102
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 101
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v8    # "x":I
    .end local v9    # "y":I
    :cond_4
    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    .line 111
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findVacantCell([IIIII[[Z)Z

    move-result v0

    goto :goto_0
.end method

.method findEmptyCellWithOccupied([IIIII[[Z)Z
    .locals 1
    .param p1, "xy"    # [I
    .param p2, "itemSpanX"    # I
    .param p3, "itemSpanY"    # I
    .param p4, "xCount"    # I
    .param p5, "yCount"    # I
    .param p6, "occupied"    # [[Z

    .prologue
    .line 116
    invoke-direct/range {p0 .. p6}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findVacantCell([IIIII[[Z)Z

    move-result v0

    return v0
.end method

.method findNearEmptyCell([IJII)Z
    .locals 8
    .param p1, "xy"    # [I
    .param p2, "screenId"    # J
    .param p4, "fromX"    # I
    .param p5, "fromY"    # I

    .prologue
    const/4 v4, 0x1

    .line 84
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, v4

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findNearEmptyCell([IJIIII)Z

    move-result v0

    return v0
.end method

.method declared-synchronized findNearVacantCell([IIIIIII[[Z)Z
    .locals 22
    .param p1, "vacant"    # [I
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "spanX"    # I
    .param p5, "spanY"    # I
    .param p6, "xCount"    # I
    .param p7, "yCount"    # I
    .param p8, "occupied"    # [[Z

    .prologue
    .line 351
    monitor-enter p0

    if-ltz p2, :cond_0

    move/from16 v0, p2

    move/from16 v1, p6

    if-ge v0, v1, :cond_0

    if-ltz p3, :cond_0

    move/from16 v0, p3

    move/from16 v1, p7

    if-lt v0, v1, :cond_1

    .line 352
    :cond_0
    const/4 v2, 0x0

    .line 395
    :goto_0
    monitor-exit p0

    return v2

    .line 355
    :cond_1
    if-eqz p8, :cond_2

    :try_start_0
    move-object/from16 v0, p8

    array-length v2, v0

    move/from16 v0, p6

    if-ne v2, v0, :cond_2

    move-object/from16 v0, p8

    array-length v2, v0

    if-lez v2, :cond_3

    const/4 v2, 0x0

    aget-object v2, p8, v2

    array-length v2, v2

    move/from16 v0, p7

    if-eq v2, v0, :cond_3

    .line 357
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 360
    :cond_3
    filled-new-array/range {p6 .. p7}, [I

    move-result-object v2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 361
    .local v4, "visit":[[I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, p6

    if-ge v0, v1, :cond_5

    .line 362
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, p7

    if-ge v0, v1, :cond_4

    .line 363
    aget-object v2, v4, v20

    const/4 v5, 0x0

    aput v5, v2, v21

    .line 362
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 361
    :cond_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 367
    .end local v21    # "j":I
    :cond_5
    aget-object v2, v4, p2

    const/4 v5, 0x1

    aput v5, v2, p3

    .line 368
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 369
    .local v3, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Integer;>;"
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 370
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 372
    :cond_6
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 373
    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 374
    .local v19, "front_x":I
    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 376
    .local v7, "front_y":I
    add-int/lit8 v6, v19, -0x1

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Lcom/android/launcher3/home/HomeItemPositionHelper;->checkNearVacantCell(Ljava/util/Queue;[[I[IIIIIII[[Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 378
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 380
    :cond_7
    add-int/lit8 v6, v19, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Lcom/android/launcher3/home/HomeItemPositionHelper;->checkNearVacantCell(Ljava/util/Queue;[[I[IIIIIII[[Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 382
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 384
    :cond_8
    add-int/lit8 v13, v7, -0x1

    move-object/from16 v8, p0

    move-object v9, v3

    move-object v10, v4

    move-object/from16 v11, p1

    move/from16 v12, v19

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    move-object/from16 v18, p8

    invoke-direct/range {v8 .. v18}, Lcom/android/launcher3/home/HomeItemPositionHelper;->checkNearVacantCell(Ljava/util/Queue;[[I[IIIIIII[[Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 386
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 388
    :cond_9
    add-int/lit8 v13, v7, 0x1

    move-object/from16 v8, p0

    move-object v9, v3

    move-object v10, v4

    move-object/from16 v11, p1

    move/from16 v12, v19

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    move-object/from16 v18, p8

    invoke-direct/range {v8 .. v18}, Lcom/android/launcher3/home/HomeItemPositionHelper;->checkNearVacantCell(Ljava/util/Queue;[[I[IIIIIII[[Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_6

    .line 390
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 395
    .end local v7    # "front_y":I
    .end local v19    # "front_x":I
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 351
    .end local v3    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Integer;>;"
    .end local v4    # "visit":[[I
    .end local v20    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;J[IIIZ)Z
    .locals 18
    .param p2, "screenId"    # J
    .param p4, "xy"    # [I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "lastPosition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;J[IIIZ)Z"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "occupiedPos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v11

    .line 48
    .local v11, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    iget-object v2, v11, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v6

    .line 49
    .local v6, "xCount":I
    iget-object v2, v11, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v7

    .line 50
    .local v7, "yCount":I
    filled-new-array {v6, v7}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Z

    .line 52
    .local v8, "occupied":[[Z
    if-eqz p1, :cond_2

    .line 53
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 54
    .local v14, "r":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v3, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v4, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int v15, v3, v4

    .line 55
    .local v15, "right":I
    iget v3, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v4, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    add-int v10, v3, v4

    .line 56
    .local v10, "bottom":I
    iget v0, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v16, v0

    .local v16, "x":I
    :goto_0
    if-ltz v16, :cond_0

    move/from16 v0, v16

    if-ge v0, v15, :cond_0

    move/from16 v0, v16

    if-ge v0, v6, :cond_0

    .line 57
    iget v0, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v17, v0

    .local v17, "y":I
    :goto_1
    if-ltz v17, :cond_1

    move/from16 v0, v17

    if-ge v0, v10, :cond_1

    move/from16 v0, v17

    if-ge v0, v7, :cond_1

    .line 58
    aget-object v3, v8, v16

    const/4 v4, 0x1

    aput-boolean v4, v3, v17

    .line 57
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 56
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 64
    .end local v10    # "bottom":I
    .end local v14    # "r":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v15    # "right":I
    .end local v16    # "x":I
    .end local v17    # "y":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeItemPositionHelper;->mPreservedPosList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 65
    const/4 v2, 0x2

    new-array v12, v2, [I

    .line 66
    .local v12, "gridSize":[I
    const/4 v2, 0x0

    iget-object v3, v11, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v3

    aput v3, v12, v2

    .line 67
    const/4 v2, 0x1

    iget-object v3, v11, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v3

    aput v3, v12, v2

    .line 69
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeItemPositionHelper;->mPreservedPosList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;

    .line 70
    .local v13, "p":Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;
    iget-wide v4, v13, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;->screenId:J

    cmp-long v3, p2, v4

    if-nez v3, :cond_3

    .line 71
    iget v0, v13, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;->x:I

    move/from16 v16, v0

    .restart local v16    # "x":I
    :goto_2
    iget v3, v13, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;->x:I

    iget v4, v13, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;->spanX:I

    add-int/2addr v3, v4

    move/from16 v0, v16

    if-ge v0, v3, :cond_3

    const/4 v3, 0x0

    aget v3, v12, v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_3

    .line 72
    iget v0, v13, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;->y:I

    move/from16 v17, v0

    .restart local v17    # "y":I
    :goto_3
    iget v3, v13, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;->y:I

    iget v4, v13, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;->spanY:I

    add-int/2addr v3, v4

    move/from16 v0, v17

    if-ge v0, v3, :cond_4

    const/4 v3, 0x1

    aget v3, v12, v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_4

    .line 73
    aget-object v3, v8, v16

    const/4 v4, 0x1

    aput-boolean v4, v3, v17

    .line 72
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 71
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .end local v12    # "gridSize":[I
    .end local v13    # "p":Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;
    .end local v16    # "x":I
    .end local v17    # "y":I
    :cond_5
    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v9, p7

    .line 80
    invoke-direct/range {v2 .. v9}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findVacantCell([IIIII[[ZZ)Z

    move-result v2

    return v2
.end method
