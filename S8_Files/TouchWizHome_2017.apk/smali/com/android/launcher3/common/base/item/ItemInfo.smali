.class public Lcom/android/launcher3/common/base/item/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# static fields
.field public static final EXTRA_PROFILE:Ljava/lang/String; = "profile"

.field public static final NO_ID:I = -0x1


# instance fields
.field public cellX:I

.field public cellY:I

.field public componentName:Landroid/content/ComponentName;

.field public container:J

.field public contentDescription:Ljava/lang/CharSequence;

.field public dropPos:[I

.field public hidden:I

.field public id:J

.field isGameApp:Z

.field public itemType:I

.field public lock:I

.field public mBadgeCount:I

.field public mChecked:Z

.field private mDexID:J

.field public mDirty:Z

.field private mPrevContainer:J

.field public minSpanX:I

.field public minSpanY:I

.field public rank:I

.field public requiresDbUpdate:Z

.field public screenId:J

.field public spanX:I

.field public spanY:I

.field public title:Ljava/lang/CharSequence;

.field public user:Lcom/android/launcher3/common/compat/UserHandleCompat;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    .line 65
    iput-wide v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 70
    iput-wide v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 75
    iput v4, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 80
    iput v4, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 85
    iput v1, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 90
    iput v1, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    .line 95
    iput v1, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->minSpanX:I

    .line 100
    iput v1, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->minSpanY:I

    .line 105
    iput v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 110
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->requiresDbUpdate:Z

    .line 138
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    .line 145
    iput-object v5, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->dropPos:[I

    .line 149
    iput-object v5, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 151
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->mChecked:Z

    .line 156
    iput-wide v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->mDexID:J

    .line 166
    iput-wide v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->mPrevContainer:J

    .line 184
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->isGameApp:Z

    .line 187
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 188
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    .line 65
    iput-wide v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 70
    iput-wide v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 75
    iput v4, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 80
    iput v4, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 85
    iput v1, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 90
    iput v1, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    .line 95
    iput v1, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->minSpanX:I

    .line 100
    iput v1, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->minSpanY:I

    .line 105
    iput v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 110
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->requiresDbUpdate:Z

    .line 138
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    .line 145
    iput-object v5, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->dropPos:[I

    .line 149
    iput-object v5, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 151
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->mChecked:Z

    .line 156
    iput-wide v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->mDexID:J

    .line 166
    iput-wide v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->mPrevContainer:J

    .line 184
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->isGameApp:Z

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->copyFrom(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 193
    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 194
    invoke-static {p0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->checkItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 196
    :cond_0
    return-void
.end method

.method private isHiddenBy(I)Z
    .locals 3
    .param p1, "hiddenFlag"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 303
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 311
    :cond_0
    :goto_0
    return v0

    .line 305
    :pswitch_1
    iget v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 307
    :pswitch_2
    iget v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 309
    :pswitch_3
    iget v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 251
    if-eqz p1, :cond_0

    .line 252
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 253
    .local v0, "data":[B
    const-string v1, "icon"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 255
    .end local v0    # "data":[B
    :cond_0
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 199
    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    iput-wide v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    .line 200
    iget v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 201
    iget v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 202
    iget v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iput v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 203
    iget v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    iput v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    .line 204
    iget v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iput v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 205
    iget-object v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    .line 206
    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 207
    iget v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    iput v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    .line 208
    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iput-wide v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 209
    iget-object v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iput-object v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 210
    iget-object v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 211
    iget-object v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 212
    iget v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    iput v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    .line 213
    return-void
.end method

.method public getChecked()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->mChecked:Z

    return v0
.end method

.method public getDexID()J
    .locals 2

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->mDexID:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 216
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected Intent"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrevContainer()J
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->mPrevContainer:J

    return-wide v0
.end method

.method public getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    return-object v0
.end method

.method public isAppOrShortcutType()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 279
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-eq v2, v1, :cond_2

    iget v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isContainApps()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 275
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x66

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isGameApp()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->isGameApp:Z

    return v0
.end method

.method public isHiddenByGame()Z
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->isHiddenBy(I)Z

    move-result v0

    return v0
.end method

.method public isHiddenByUser()Z
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->isHiddenBy(I)Z

    move-result v0

    return v0
.end method

.method public isHiddenByXML()Z
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->isHiddenBy(I)Z

    move-result v0

    return v0
.end method

.method public onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 231
    const-string v2, "itemType"

    iget v3, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 232
    const-string v2, "container"

    iget-wide v4, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 233
    const-string v2, "screen"

    iget-wide v4, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 234
    const-string v2, "cellX"

    iget v3, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    const-string v2, "cellY"

    iget v3, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    const-string v2, "spanX"

    iget v3, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    const-string v2, "spanY"

    iget v3, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    const-string v2, "rank"

    iget v3, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 239
    const-string v2, "hidden"

    iget v3, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    invoke-static {p1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v0

    .line 241
    .local v0, "serialNumber":J
    const-string v2, "profileId"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 242
    const-string v2, "_id"

    iget-wide v4, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 244
    iget-wide v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    const-wide/16 v4, -0xc9

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 246
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Screen id should not be EXTRA_EMPTY_SCREEN_ID"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 248
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 290
    iput-boolean p1, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->mChecked:Z

    .line 291
    return-void
.end method

.method public setDexID(J)V
    .locals 1
    .param p1, "dexID"    # J

    .prologue
    .line 163
    iput-wide p1, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->mDexID:J

    .line 164
    return-void
.end method

.method public setGameApp(Z)V
    .locals 0
    .param p1, "gameApp"    # Z

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->isGameApp:Z

    .line 182
    return-void
.end method

.method public setHidden(I)I
    .locals 1
    .param p1, "hiddenFlag"    # I

    .prologue
    .line 295
    iget v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    return v0
.end method

.method public setPrevContainer(J)V
    .locals 1
    .param p1, "container"    # J

    .prologue
    .line 173
    iput-wide p1, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->mPrevContainer:J

    .line 174
    return-void
.end method

.method public setUnHidden(I)I
    .locals 2
    .param p1, "hiddenFlag"    # I

    .prologue
    .line 299
    iget v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dropPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->dropPos:[I

    .line 270
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method
