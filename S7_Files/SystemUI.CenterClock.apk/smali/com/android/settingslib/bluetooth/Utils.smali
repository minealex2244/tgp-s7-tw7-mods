.class public Lcom/android/settingslib/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/Utils$ErrorListener;,
        Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;
    }
.end annotation


# static fields
.field private static final CONTACT_NUMBER:[Ljava/lang/String;

.field public static final DEBUG:Z

.field static checksum:Ljava/util/zip/Checksum;

.field private static sErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

.field private static sSemErrorListener:Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    .line 57
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    sput-object v0, Lcom/android/settingslib/bluetooth/Utils;->checksum:Ljava/util/zip/Checksum;

    .line 178
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 179
    const-string/jumbo v1, "data1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 178
    sput-object v0, Lcom/android/settingslib/bluetooth/Utils;->CONTACT_NUMBER:[Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToString([B)Ljava/lang/String;
    .locals 8
    .param p0, "object"    # [B

    .prologue
    const/4 v3, 0x0

    .line 233
    const-string/jumbo v0, "0123456789abcdef"

    .line 235
    .local v0, "HEXES":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 236
    return-object v3

    .line 238
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 239
    .local v2, "hex":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    array-length v4, p0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-byte v1, p0, v3

    .line 240
    .local v1, "b":B
    const-string/jumbo v5, "0123456789abcdef"

    and-int/lit16 v6, v1, 0xf0

    shr-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "0123456789abcdef"

    and-int/lit8 v7, v1, 0xf

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 243
    .end local v1    # "b":B
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static cropIcon(Landroid/content/Context;ILandroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sizeDimen"    # I
    .param p2, "source"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    .line 333
    const/4 v6, 0x0

    .line 334
    .local v6, "resultIcon":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 335
    .local v2, "mask":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 337
    .local v7, "scaledSource":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v8, v9

    .line 339
    .local v8, "size":I
    :try_start_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 340
    .local v2, "mask":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 341
    .local v3, "maskCanvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 342
    .local v4, "maskPaint":Landroid/graphics/Paint;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 343
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/settingslib/R$color;->bt_device_icon_background_tint_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    int-to-float v9, v8

    div-float/2addr v9, v12

    int-to-float v10, v8

    div-float/2addr v10, v12

    int-to-float v11, v8

    div-float/2addr v11, v12

    invoke-virtual {v3, v9, v10, v11, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 346
    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 347
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 348
    .local v7, "scaledSource":Landroid/graphics/Bitmap;
    const/4 v9, 0x1

    invoke-static {v7, v8, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 350
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 352
    .local v6, "resultIcon":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 353
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v7, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 355
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 356
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 357
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v2, v9, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 358
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "resultIcon":Landroid/graphics/Bitmap;
    .end local v7    # "scaledSource":Landroid/graphics/Bitmap;
    :cond_0
    if-eqz v2, :cond_1

    .line 364
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 366
    :cond_1
    if-eqz v7, :cond_2

    .line 367
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 370
    .end local v2    # "mask":Landroid/graphics/Bitmap;
    .end local v3    # "maskCanvas":Landroid/graphics/Canvas;
    .end local v4    # "maskPaint":Landroid/graphics/Paint;
    :cond_2
    :goto_0
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v9

    .line 360
    :catch_0
    move-exception v1

    .line 361
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    if-eqz v2, :cond_3

    .line 364
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 366
    :cond_3
    if-eqz v7, :cond_2

    .line 367
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 362
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 363
    if-eqz v2, :cond_4

    .line 364
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 366
    :cond_4
    if-eqz v7, :cond_5

    .line 367
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 362
    :cond_5
    throw v9
.end method

.method public static cutNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 250
    const-string/jumbo v1, "[^\\d]"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "phoneNumber":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    .line 253
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    :cond_0
    return-object v0
.end method

.method public static getConnectionStateSummary(I)I
    .locals 1
    .param p0, "connectionState"    # I

    .prologue
    .line 60
    packed-switch p0, :pswitch_data_0

    .line 70
    const/4 v0, 0x0

    return v0

    .line 62
    :pswitch_0
    sget v0, Lcom/android/settingslib/R$string;->bluetooth_connected:I

    return v0

    .line 64
    :pswitch_1
    sget v0, Lcom/android/settingslib/R$string;->bluetooth_connecting:I

    return v0

    .line 66
    :pswitch_2
    sget v0, Lcom/android/settingslib/R$string;->bluetooth_disconnected:I

    return v0

    .line 68
    :pswitch_3
    sget v0, Lcom/android/settingslib/R$string;->bluetooth_disconnecting:I

    return v0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getContactImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 292
    const/4 v11, 0x0

    .line 293
    .local v11, "phones":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 295
    .local v8, "clsInputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 296
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 297
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 298
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 299
    const-string/jumbo v3, "photo_uri"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 300
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 298
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 301
    .local v11, "phones":Landroid/database/Cursor;
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 302
    const-string/jumbo v2, "photo_uri"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 303
    .local v14, "uriString":Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 304
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 305
    .local v12, "photo":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 307
    .local v8, "clsInputStream":Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settingslib/R$drawable;->list_ic_mobile:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 308
    .local v7, "btDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 309
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    .line 310
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    const/4 v4, 0x0

    .line 309
    invoke-static {v6, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 311
    .local v13, "resizeBitmap":Landroid/graphics/Bitmap;
    sget v2, Lcom/android/settingslib/R$dimen;->list_app_icon_size:I

    invoke-static {p0, v2, v13}, Lcom/android/settingslib/bluetooth/Utils;->cropIcon(Landroid/content/Context;ILandroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 318
    if-eqz v11, :cond_0

    .line 319
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 321
    :cond_0
    if-eqz v8, :cond_1

    .line 323
    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 311
    :cond_1
    :goto_0
    return-object v2

    .line 324
    :catch_0
    move-exception v9

    .line 325
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 318
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "btDrawable":Landroid/graphics/drawable/Drawable;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v11    # "phones":Landroid/database/Cursor;
    .end local v12    # "photo":Landroid/net/Uri;
    .end local v13    # "resizeBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "uriString":Ljava/lang/String;
    .local v8, "clsInputStream":Ljava/io/InputStream;
    :cond_2
    if-eqz v11, :cond_3

    .line 319
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 329
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v8    # "clsInputStream":Ljava/io/InputStream;
    :cond_3
    :goto_1
    const/4 v2, 0x0

    return-object v2

    .line 315
    :catch_1
    move-exception v10

    .line 316
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 318
    if-eqz v11, :cond_4

    .line 319
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 321
    :cond_4
    if-eqz v8, :cond_3

    .line 323
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 324
    :catch_2
    move-exception v9

    .line 325
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 317
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 318
    if-eqz v11, :cond_5

    .line 319
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 321
    :cond_5
    if-eqz v8, :cond_6

    .line 323
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 317
    :cond_6
    :goto_2
    throw v2

    .line 324
    :catch_3
    move-exception v9

    .line 325
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getDataCheckString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "num"    # Ljava/lang/String;

    .prologue
    .line 260
    const-string/jumbo v4, "00000000"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    const-string/jumbo v4, "0000"

    return-object v4

    .line 264
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 265
    .local v0, "byteArray":[B
    sget-object v4, Lcom/android/settingslib/bluetooth/Utils;->checksum:Ljava/util/zip/Checksum;

    array-length v5, v0

    const/4 v6, 0x0

    invoke-interface {v4, v0, v6, v5}, Ljava/util/zip/Checksum;->update([BII)V

    .line 266
    sget-object v4, Lcom/android/settingslib/bluetooth/Utils;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v4}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v2

    .line 267
    .local v2, "csValue":J
    sget-object v4, Lcom/android/settingslib/bluetooth/Utils;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v4}, Ljava/util/zip/Checksum;->reset()V

    .line 269
    invoke-static {v2, v3}, Lcom/android/settingslib/bluetooth/Utils;->longToString(J)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "val":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getParsePhoneNumber(Landroid/content/Context;Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)Ljava/lang/String;
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "data"    # Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    .prologue
    const/4 v0, 0x0

    .line 283
    if-nez p1, :cond_0

    .line 284
    return-object v0

    .line 288
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getContactHash()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/Utils;->byteToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getContactCrc()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/Utils;->byteToString([B)Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-static {p0, v0, v1}, Lcom/android/settingslib/bluetooth/Utils;->retrieveDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEnabledUltraPowerSaving(Landroid/content/Context;)Z
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 374
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 374
    if-nez v1, :cond_0

    .line 376
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 374
    if-eqz v1, :cond_2

    .line 377
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    .line 378
    .local v0, "em":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    if-nez v0, :cond_1

    return v3

    .line 379
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 381
    .end local v0    # "em":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    :cond_2
    return v3
.end method

.method private static longToString(J)Ljava/lang/String;
    .locals 10
    .param p0, "m"    # J

    .prologue
    const/4 v8, 0x0

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 276
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 277
    const-string/jumbo v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    mul-int/lit8 v4, v0, 0x8

    ushr-long v4, p0, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static retrieveContact(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 151
    const/4 v8, 0x0

    .line 152
    .local v8, "phones":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 154
    .local v6, "contactName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 155
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 156
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 157
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 158
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 159
    const-string/jumbo v3, "display_name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 160
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 158
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 162
    .local v8, "phones":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    const-string/jumbo v2, "display_name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 164
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 171
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "contactName":Ljava/lang/String;
    .end local v8    # "phones":Landroid/database/Cursor;
    :cond_0
    if-eqz v8, :cond_1

    .line 172
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 175
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    return-object v6

    .line 168
    .restart local v6    # "contactName":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 169
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    if-eqz v8, :cond_1

    .line 172
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 170
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 171
    if-eqz v8, :cond_2

    .line 172
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_2
    throw v2
.end method

.method public static retrieveDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "numberhash"    # Ljava/lang/String;
    .param p2, "crc"    # Ljava/lang/String;

    .prologue
    .line 184
    const/4 v6, 0x0

    .line 185
    .local v6, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 186
    .local v7, "clsInputStream":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 187
    .local v11, "findContact":Ljava/lang/String;
    const-string/jumbo v0, "Settingslib_BluetoothUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " hash retrieveDB :: hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 190
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 191
    sget-object v2, Lcom/android/settingslib/bluetooth/Utils;->CONTACT_NUMBER:[Ljava/lang/String;

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND data12 LIKE \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 193
    const-string/jumbo v4, "%\'"

    .line 192
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 189
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 195
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 196
    .end local v11    # "findContact":Ljava/lang/String;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    const-string/jumbo v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 200
    .local v9, "data":Ljava/lang/String;
    invoke-static {v9}, Lcom/android/settingslib/bluetooth/Utils;->cutNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/Utils;->getDataCheckString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 202
    .local v8, "crcValue":Ljava/lang/String;
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string/jumbo v0, "Settingslib_BluetoothUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " hash retrieveDB :: CHECK  : true  -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", find contact name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    move-object v11, v9

    .local v11, "findContact":Ljava/lang/String;
    goto :goto_0

    .line 206
    .end local v11    # "findContact":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "Settingslib_BluetoothUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " hash retrieveDB :: CHECK  : false  -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "!="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 214
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v8    # "crcValue":Ljava/lang/String;
    .end local v9    # "data":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 215
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    if-eqz v6, :cond_1

    .line 218
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 229
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v11

    .line 209
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_2
    :try_start_2
    const-string/jumbo v0, "Settingslib_BluetoothUtils"

    const-string/jumbo v1, " hash retrieveDB :: end to cursor moveToNext"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    :goto_2
    if-eqz v6, :cond_1

    .line 218
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 212
    .local v11, "findContact":Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string/jumbo v0, "Settingslib_BluetoothUtils"

    const-string/jumbo v1, " hash retrieveDB :: CHECK :false - cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 216
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v11    # "findContact":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 217
    if-eqz v6, :cond_4

    .line 218
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_4
    throw v0
.end method

.method public static setErrorListener(Lcom/android/settingslib/bluetooth/Utils$ErrorListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    .prologue
    .line 114
    sput-object p0, Lcom/android/settingslib/bluetooth/Utils;->sErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    .line 113
    return-void
.end method

.method static showConnectingError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 96
    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sSemErrorListener:Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sSemErrorListener:Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;->showConnectingError(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    :cond_0
    return-void
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 108
    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sSemErrorListener:Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sSemErrorListener:Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;->onShowError(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "messageResId"    # I

    .prologue
    .line 102
    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/settingslib/bluetooth/Utils$ErrorListener;->onShowError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 101
    :cond_0
    return-void
.end method

.method static showPANConnectingError(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isNapRole"    # Z

    .prologue
    .line 90
    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sSemErrorListener:Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sSemErrorListener:Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;->showPANConnectingError(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 89
    :cond_0
    return-void
.end method

.method public static updateDeviceName(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getInstance()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    .line 77
    .local v0, "mLocalAdapter":Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "device_name"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "mLocalAdapterName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    :cond_1
    :goto_0
    return-void

    .line 84
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 85
    const-string/jumbo v2, "Settingslib_BluetoothUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDeviceName :: change device name to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
