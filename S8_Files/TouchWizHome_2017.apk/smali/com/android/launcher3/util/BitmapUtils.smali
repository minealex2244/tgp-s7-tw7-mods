.class public Lcom/android/launcher3/util/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/BitmapUtils$CanvasPool;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Launcher.BitmapUtils"

.field private static mCanvasPool:Lcom/android/launcher3/util/BitmapUtils$CanvasPool;

.field private static final sCanvas:Landroid/graphics/Canvas;

.field private static sColorIndex:I

.field private static sColors:[I

.field private static final sOldBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/BitmapUtils;->sOldBounds:Landroid/graphics/Rect;

    .line 29
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/BitmapUtils;->sCanvas:Landroid/graphics/Canvas;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher3/util/BitmapUtils;->sColors:[I

    .line 31
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher3/util/BitmapUtils;->sColorIndex:I

    .line 32
    new-instance v0, Lcom/android/launcher3/util/BitmapUtils$CanvasPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/BitmapUtils$CanvasPool;-><init>(Lcom/android/launcher3/util/BitmapUtils$1;)V

    sput-object v0, Lcom/android/launcher3/util/BitmapUtils;->mCanvasPool:Lcom/android/launcher3/util/BitmapUtils$CanvasPool;

    .line 35
    sget-object v0, Lcom/android/launcher3/util/BitmapUtils;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 37
    return-void

    .line 30
    :array_0
    .array-data 4
        -0x10000
        -0xff0100
        -0xffff01
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createIconBitmap(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "iconIndex"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 42
    .local v0, "data":[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 44
    :goto_0
    return-object v2

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "icon"    # Landroid/graphics/Bitmap;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-static {}, Lcom/android/launcher3/util/BitmapUtils;->getIconBitmapSize()I

    move-result v0

    .line 89
    .local v0, "iconBitmapSize":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 92
    .end local p0    # "icon":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .restart local p0    # "icon":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v1, p1}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 22
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    sget-object v20, Lcom/android/launcher3/util/BitmapUtils;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v20

    .line 100
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/util/BitmapUtils;->getIconBitmapSize()I

    move-result v9

    .line 102
    .local v9, "iconBitmapSize":I
    move/from16 v18, v9

    .line 103
    .local v18, "width":I
    move v8, v9

    .line 105
    .local v8, "height":I
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 106
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v11, v0

    .line 107
    .local v11, "painter":Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 108
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 117
    .end local v11    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 118
    .local v14, "sourceWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 119
    .local v13, "sourceHeight":I
    if-lez v14, :cond_1

    if-lez v13, :cond_1

    .line 121
    int-to-float v0, v14

    move/from16 v19, v0

    int-to-float v0, v13

    move/from16 v21, v0

    div-float v12, v19, v21

    .line 122
    .local v12, "ratio":F
    if-le v14, v13, :cond_3

    .line 123
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v12

    move/from16 v0, v19

    float-to-int v8, v0

    .line 130
    .end local v12    # "ratio":F
    :cond_1
    :goto_1
    move/from16 v16, v9

    .line 131
    .local v16, "textureWidth":I
    move v15, v9

    .line 133
    .local v15, "textureHeight":I
    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v15, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 135
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    sget-object v6, Lcom/android/launcher3/util/BitmapUtils;->sCanvas:Landroid/graphics/Canvas;

    .line 136
    .local v6, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v6, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 138
    sub-int v19, v16, v18

    div-int/lit8 v10, v19, 0x2

    .line 139
    .local v10, "left":I
    sub-int v19, v15, v8

    div-int/lit8 v17, v19, 0x2

    .line 142
    .local v17, "top":I
    const/4 v7, 0x0

    .line 152
    .local v7, "debug":Z
    sget-object v19, Lcom/android/launcher3/util/BitmapUtils;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 153
    add-int v19, v10, v18

    add-int v21, v17, v8

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v21

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 154
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 155
    sget-object v19, Lcom/android/launcher3/util/BitmapUtils;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 156
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 158
    monitor-exit v20

    return-object v4

    .line 109
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "debug":Z
    .end local v10    # "left":I
    .end local v13    # "sourceHeight":I
    .end local v14    # "sourceWidth":I
    .end local v15    # "textureHeight":I
    .end local v16    # "textureWidth":I
    .end local v17    # "top":I
    :cond_2
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 111
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v5, v0

    .line 112
    .local v5, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 113
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v19

    if-nez v19, :cond_0

    .line 114
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_0

    .line 159
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v8    # "height":I
    .end local v9    # "iconBitmapSize":I
    .end local v18    # "width":I
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 124
    .restart local v8    # "height":I
    .restart local v9    # "iconBitmapSize":I
    .restart local v12    # "ratio":F
    .restart local v13    # "sourceHeight":I
    .restart local v14    # "sourceWidth":I
    .restart local v18    # "width":I
    :cond_3
    if-le v13, v14, :cond_1

    .line 125
    int-to-float v0, v8

    move/from16 v19, v0

    mul-float v19, v19, v12

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    goto/16 :goto_1
.end method

.method public static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 166
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 168
    .local v8, "oldBounds":Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 169
    .local v5, "copyIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 170
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 172
    :cond_0
    if-nez v5, :cond_1

    .line 173
    move-object/from16 v5, p0

    .line 175
    :cond_1
    instance-of v13, v5, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v13, :cond_4

    move-object v9, v5

    .line 176
    check-cast v9, Landroid/graphics/drawable/PaintDrawable;

    .line 177
    .local v9, "painter":Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, p2

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 178
    move/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 186
    .end local v9    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_2
    :goto_0
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 187
    const/high16 v10, 0x3f800000    # 1.0f

    .line 188
    .local v10, "scale":F
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 189
    .local v12, "sourceWidth":I
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 190
    .local v11, "sourceHeight":I
    if-lez v12, :cond_3

    if-gtz v11, :cond_5

    .line 191
    :cond_3
    move/from16 v12, p2

    .line 192
    move/from16 v11, p3

    .line 193
    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v5, v13, v14, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 207
    :goto_1
    sub-int v6, p2, v12

    .line 208
    .local v6, "dx":I
    sub-int v7, p3, v11

    .line 210
    .local v7, "dy":I
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 211
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    sget-object v13, Lcom/android/launcher3/util/BitmapUtils;->mCanvasPool:Lcom/android/launcher3/util/BitmapUtils$CanvasPool;

    invoke-virtual {v13}, Lcom/android/launcher3/util/BitmapUtils$CanvasPool;->get()Landroid/graphics/Canvas;

    move-result-object v4

    .line 212
    .local v4, "canvas":Landroid/graphics/Canvas;
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 213
    invoke-virtual {v4, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 214
    int-to-float v13, v6

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v13, v14

    int-to-float v14, v7

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v14, v15

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 215
    invoke-virtual {v4, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 216
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 217
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 218
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 219
    sget-object v13, Lcom/android/launcher3/util/BitmapUtils;->mCanvasPool:Lcom/android/launcher3/util/BitmapUtils$CanvasPool;

    invoke-virtual {v13, v4}, Lcom/android/launcher3/util/BitmapUtils$CanvasPool;->recycle(Landroid/graphics/Canvas;)V

    .line 220
    return-object v2

    .line 179
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "dx":I
    .end local v7    # "dy":I
    .end local v10    # "scale":F
    .end local v11    # "sourceHeight":I
    .end local v12    # "sourceWidth":I
    :cond_4
    instance-of v13, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v13, :cond_2

    move-object v3, v5

    .line 181
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 182
    .local v3, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v13

    if-nez v13, :cond_2

    .line 183
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 196
    .end local v3    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v10    # "scale":F
    .restart local v11    # "sourceHeight":I
    .restart local v12    # "sourceWidth":I
    :cond_5
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14, v12, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 198
    move/from16 v0, p2

    int-to-float v13, v0

    int-to-float v14, v12

    div-float/2addr v13, v14

    move/from16 v0, p3

    int-to-float v14, v0

    int-to-float v15, v11

    div-float/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 200
    int-to-float v13, v12

    mul-float/2addr v13, v10

    float-to-int v12, v13

    .line 201
    int-to-float v13, v11

    mul-float/2addr v13, v10

    float-to-int v11, v13

    goto :goto_1
.end method

.method public static createIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 67
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 68
    .local v2, "resources":Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    .line 69
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 71
    .local v0, "id":I
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    .line 72
    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/model/IconCache;->getIconDpi()I

    move-result v4

    .line 71
    invoke-virtual {v2, v0, v4}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 70
    invoke-static {v4, p2}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 77
    .end local v0    # "id":I
    .end local v2    # "resources":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-object v3

    .line 74
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static createIconDrawable(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    .locals 2
    .param p0, "icon"    # Landroid/graphics/Bitmap;
    .param p1, "iconSize"    # I

    .prologue
    .line 52
    new-instance v0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    invoke-direct {v0, p0, p1, p1}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;II)V

    .line 53
    .local v0, "d":Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->setFilterBitmap(Z)V

    .line 54
    return-object v0
.end method

.method public static findDominantColorByHue(Landroid/graphics/Bitmap;I)I
    .locals 30
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "samples"    # I

    .prologue
    .line 313
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 314
    .local v9, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    .line 315
    .local v22, "width":I
    int-to-double v0, v9

    move-wide/from16 v26, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v28, v0

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v19, v0

    .line 316
    .local v19, "sampleStride":I
    const/16 v25, 0x1

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 317
    const/16 v19, 0x1

    .line 321
    :cond_0
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v11, v0, [F

    .line 325
    .local v11, "hsv":[F
    const/16 v25, 0x168

    move/from16 v0, v25

    new-array v13, v0, [F

    .line 326
    .local v13, "hueScoreHistogram":[F
    const/high16 v10, -0x40800000    # -1.0f

    .line 327
    .local v10, "highScore":F
    const/4 v7, -0x1

    .line 329
    .local v7, "bestHue":I
    const/16 v24, 0x0

    .local v24, "y":I
    :goto_0
    move/from16 v0, v24

    if-ge v0, v9, :cond_4

    .line 330
    const/16 v23, 0x0

    .local v23, "x":I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 331
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    .line 332
    .local v5, "argb":I
    shr-int/lit8 v25, v5, 0x18

    move/from16 v0, v25

    and-int/lit16 v4, v0, 0xff

    .line 333
    .local v4, "alpha":I
    const/16 v25, 0x80

    move/from16 v0, v25

    if-ge v4, v0, :cond_2

    .line 330
    :cond_1
    :goto_2
    add-int v23, v23, v19

    goto :goto_1

    .line 338
    :cond_2
    const/high16 v25, -0x1000000

    or-int v16, v5, v25

    .line 339
    .local v16, "rgb":I
    move/from16 v0, v16

    invoke-static {v0, v11}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 341
    const/16 v25, 0x0

    aget v25, v11, v25

    move/from16 v0, v25

    float-to-int v12, v0

    .line 342
    .local v12, "hue":I
    if-ltz v12, :cond_1

    array-length v0, v13

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v12, v0, :cond_1

    .line 346
    const/16 v25, 0x1

    aget v25, v11, v25

    const/16 v26, 0x2

    aget v26, v11, v26

    mul-float v20, v25, v26

    .line 347
    .local v20, "score":F
    aget v25, v13, v12

    add-float v25, v25, v20

    aput v25, v13, v12

    .line 348
    aget v25, v13, v12

    cmpl-float v25, v25, v10

    if-lez v25, :cond_1

    .line 349
    aget v10, v13, v12

    .line 350
    move v7, v12

    goto :goto_2

    .line 329
    .end local v4    # "alpha":I
    .end local v5    # "argb":I
    .end local v12    # "hue":I
    .end local v16    # "rgb":I
    .end local v20    # "score":F
    :cond_3
    add-int v24, v24, v19

    goto :goto_0

    .line 355
    .end local v23    # "x":I
    :cond_4
    new-instance v17, Landroid/util/SparseArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseArray;-><init>()V

    .line 356
    .local v17, "rgbScores":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    const/high16 v6, -0x1000000

    .line 357
    .local v6, "bestColor":I
    const/high16 v10, -0x40800000    # -1.0f

    .line 361
    const/16 v24, 0x0

    :goto_3
    move/from16 v0, v24

    if-ge v0, v9, :cond_8

    .line 362
    const/16 v23, 0x0

    .restart local v23    # "x":I
    :goto_4
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 363
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v25

    const/high16 v26, -0x1000000

    or-int v16, v25, v26

    .line 364
    .restart local v16    # "rgb":I
    move/from16 v0, v16

    invoke-static {v0, v11}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 365
    const/16 v25, 0x0

    aget v25, v11, v25

    move/from16 v0, v25

    float-to-int v12, v0

    .line 366
    .restart local v12    # "hue":I
    if-ne v12, v7, :cond_5

    .line 367
    const/16 v25, 0x1

    aget v18, v11, v25

    .line 368
    .local v18, "s":F
    const/16 v25, 0x2

    aget v21, v11, v25

    .line 369
    .local v21, "v":F
    const/high16 v25, 0x42c80000    # 100.0f

    mul-float v25, v25, v18

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    const v26, 0x461c4000    # 10000.0f

    mul-float v26, v26, v21

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    add-int v8, v25, v26

    .line 371
    .local v8, "bucket":I
    mul-float v20, v18, v21

    .line 372
    .restart local v20    # "score":F
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    .line 373
    .local v15, "oldTotal":Ljava/lang/Float;
    if-nez v15, :cond_6

    move/from16 v14, v20

    .line 374
    .local v14, "newTotal":F
    :goto_5
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 375
    cmpl-float v25, v14, v10

    if-lez v25, :cond_5

    .line 376
    move v10, v14

    .line 378
    move/from16 v6, v16

    .line 362
    .end local v8    # "bucket":I
    .end local v14    # "newTotal":F
    .end local v15    # "oldTotal":Ljava/lang/Float;
    .end local v18    # "s":F
    .end local v20    # "score":F
    .end local v21    # "v":F
    :cond_5
    add-int v23, v23, v19

    goto :goto_4

    .line 373
    .restart local v8    # "bucket":I
    .restart local v15    # "oldTotal":Ljava/lang/Float;
    .restart local v18    # "s":F
    .restart local v20    # "score":F
    .restart local v21    # "v":F
    :cond_6
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v25

    add-float v14, v25, v20

    goto :goto_5

    .line 361
    .end local v8    # "bucket":I
    .end local v12    # "hue":I
    .end local v15    # "oldTotal":Ljava/lang/Float;
    .end local v16    # "rgb":I
    .end local v18    # "s":F
    .end local v20    # "score":F
    .end local v21    # "v":F
    :cond_7
    add-int v24, v24, v19

    goto :goto_3

    .line 383
    .end local v23    # "x":I
    :cond_8
    return v6
.end method

.method public static getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 251
    if-nez p0, :cond_0

    .line 252
    const/4 v1, 0x0

    .line 263
    .local v1, "bmp":Landroid/graphics/Bitmap;
    .local v4, "srcWidth":I
    .local v5, "srcHeight":I
    :goto_0
    return-object v1

    .line 254
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v4    # "srcWidth":I
    .end local v5    # "srcHeight":I
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 255
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 257
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 258
    .restart local v4    # "srcWidth":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 260
    .restart local v5    # "srcHeight":I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 261
    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v3, v2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/util/BitmapUtils;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V

    goto :goto_0
.end method

.method public static getBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "dstWidth"    # I
    .param p2, "dstHeight"    # I

    .prologue
    const/4 v2, 0x0

    .line 268
    if-nez p0, :cond_0

    .line 269
    const/4 v1, 0x0

    .line 282
    :goto_0
    return-object v1

    .line 272
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 273
    .local v4, "srcWidth":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 275
    .local v5, "srcHeight":I
    int-to-float v0, p1

    int-to-float v3, v4

    div-float v7, v0, v3

    .line 276
    .local v7, "rationX":F
    int-to-float v0, p2

    int-to-float v3, v5

    div-float v8, v0, v3

    .line 277
    .local v8, "rationY":F
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 279
    .local v6, "ratio":F
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "bmp":Landroid/graphics/Bitmap;
    move-object v0, p0

    move v3, v2

    .line 280
    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/util/BitmapUtils;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V

    goto :goto_0
.end method

.method public static getBitmapWithColor(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "color"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 224
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-object v4

    .line 227
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 228
    .local v3, "res":Landroid/content/res/Resources;
    invoke-static {v3, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 229
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 230
    const-string v5, "Launcher.BitmapUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can\'t decode resource : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    :cond_2
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 238
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 240
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 241
    .local v4, "resultBmp":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 242
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v5

    if-nez v5, :cond_3

    .line 243
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v5, v8, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 245
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static getIconBitmapSize()I
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultIconSize:I

    return v0
.end method

.method public static renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V
    .locals 8
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "scale"    # F

    .prologue
    .line 287
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/util/BitmapUtils;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V

    .line 288
    return-void
.end method

.method public static renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V
    .locals 4
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "scale"    # F
    .param p7, "multiplyColor"    # I

    .prologue
    .line 292
    if-eqz p1, :cond_1

    .line 293
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 294
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0, p6, p6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 295
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 296
    .local v1, "oldBounds":Landroid/graphics/Rect;
    add-int v2, p2, p4

    add-int v3, p3, p5

    invoke-virtual {p0, p2, p3, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 297
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 298
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 299
    const/4 v2, -0x1

    if-eq p7, v2, :cond_0

    .line 300
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p7, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 302
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 304
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "oldBounds":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method
