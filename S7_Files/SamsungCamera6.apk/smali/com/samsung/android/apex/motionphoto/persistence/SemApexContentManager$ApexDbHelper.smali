.class Lcom/samsung/android/apex/motionphoto/persistence/SemApexContentManager$ApexDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SemApexContentManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/motionphoto/persistence/SemApexContentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApexDbHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 290
    const-string v0, "apex.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 291
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 323
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/persistence/SemApexContentManager$ApexDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 324
    .local v1, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_0

    .line 325
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 326
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 327
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/persistence/SemApexContentManager$ApexDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 330
    .local v0, "readableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_1

    .line 331
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 332
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 333
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 335
    :cond_1
    monitor-exit p0

    return-void

    .line 327
    .end local v0    # "readableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 322
    .end local v1    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 333
    .restart local v0    # "readableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 294
    const-string v0, "CREATE TABLE IF NOT EXISTS apex_photo (_id INTEGER PRIMARY KEY,entryid TEXT,picture_path TEXT,video_path TEXT, )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 299
    sget-object v0, Lcom/samsung/android/apex/motionphoto/persistence/SemApexContentManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void
.end method
