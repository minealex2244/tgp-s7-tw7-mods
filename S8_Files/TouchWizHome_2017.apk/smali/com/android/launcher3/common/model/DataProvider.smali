.class public abstract Lcom/android/launcher3/common/model/DataProvider;
.super Ljava/lang/Object;
.source "DataProvider.java"

# interfaces
.implements Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/model/DataProvider$DataInterface;
    }
.end annotation


# static fields
.field static final BASE_MIGRATION_VERSION:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "DataProvider"

.field protected static sContext:Landroid/content/Context;

.field static sDb:Landroid/database/sqlite/SQLiteDatabase;


# instance fields
.field mMaxItemId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/common/model/DataProvider;->mMaxItemId:J

    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    sget-object v0, Lcom/android/launcher3/common/model/DataProvider;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "DataProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataProvider called twice! old context ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/common/model/DataProvider;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new context ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    sput-object p0, Lcom/android/launcher3/common/model/DataProvider;->sContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method public static setDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 62
    sget-object v0, Lcom/android/launcher3/common/model/DataProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 63
    sput-object p0, Lcom/android/launcher3/common/model/DataProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized generateNewItemId()J
    .locals 4

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/launcher3/common/model/DataProvider;->mMaxItemId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: max item id was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 84
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/android/launcher3/common/model/DataProvider;->mMaxItemId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/launcher3/common/model/DataProvider;->mMaxItemId:J

    .line 85
    iget-wide v0, p0, Lcom/android/launcher3/common/model/DataProvider;->mMaxItemId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0
.end method

.method public getMaxId(Ljava/lang/String;)J
    .locals 12
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 93
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "MAX(_id)"

    aput-object v0, v2, v9

    .line 94
    .local v2, "columns":[Ljava/lang/String;
    sget-object v0, Lcom/android/launcher3/common/model/DataProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 97
    .local v8, "c":Landroid/database/Cursor;
    const-wide/16 v10, -0x1

    .line 98
    .local v10, "id":J
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 101
    :cond_0
    if-eqz v8, :cond_1

    .line 102
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-nez v0, :cond_2

    .line 106
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: could not query max id in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_2
    return-wide v10
.end method

.method public getMaxItemId()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/android/launcher3/common/model/DataProvider;->mMaxItemId:J

    return-wide v0
.end method

.method public initializeMaxItemId(Ljava/lang/String;)J
    .locals 2
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/model/DataProvider;->getMaxId(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setMaxItemId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/android/launcher3/common/model/DataProvider;->mMaxItemId:J

    .line 77
    return-void
.end method
