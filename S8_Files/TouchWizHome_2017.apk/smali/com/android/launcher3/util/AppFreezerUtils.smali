.class public final Lcom/android/launcher3/util/AppFreezerUtils;
.super Ljava/lang/Object;
.source "AppFreezerUtils.java"


# static fields
.field private static final APP_FREEZER_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "AppFreezerUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "content://com.samsung.android.sm/AppFreezer"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/AppFreezerUtils;->APP_FREEZER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canPutIntoSleepMode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 31
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "package_name"

    aput-object v0, v2, v10

    .line 32
    .local v2, "Columns":[Ljava/lang/String;
    const-string v8, "package_name = ? AND isAppOptTarget = ? AND (extras = ? OR extras = ?)"

    .line 33
    .local v8, "whereClause":Ljava/lang/String;
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v10

    const-string v0, "1"

    aput-object v0, v4, v9

    const/4 v0, 0x2

    const-string v1, "0"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-string v1, "2"

    aput-object v1, v4, v0

    .line 34
    .local v4, "selectionArg":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 36
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/AppFreezerUtils;->APP_FREEZER_URI:Landroid/net/Uri;

    const-string v3, "package_name = ? AND isAppOptTarget = ? AND (extras = ? OR extras = ?)"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 37
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v9, :cond_1

    move v0, v9

    .line 41
    :goto_0
    if-eqz v6, :cond_0

    .line 42
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 45
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v10

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v7

    .line 39
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "AppFreezerUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APP_FREEZER :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    if-eqz v6, :cond_2

    .line 42
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v10

    .line 45
    goto :goto_1

    .line 41
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 42
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static isInSleepMode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 49
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "package_name"

    aput-object v0, v2, v10

    .line 50
    .local v2, "Columns":[Ljava/lang/String;
    const-string v8, "package_name = ? AND isAppOptTarget = ? AND extras = ?"

    .line 51
    .local v8, "whereClause":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v10

    const-string v0, "1"

    aput-object v0, v4, v9

    const/4 v0, 0x2

    const-string v1, "1"

    aput-object v1, v4, v0

    .line 52
    .local v4, "selectionArg":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 54
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/AppFreezerUtils;->APP_FREEZER_URI:Landroid/net/Uri;

    const-string v3, "package_name = ? AND isAppOptTarget = ? AND extras = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 55
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v9, :cond_1

    move v0, v9

    .line 59
    :goto_0
    if-eqz v6, :cond_0

    .line 60
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 63
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v10

    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v7

    .line 57
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "AppFreezerUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APP_FREEZER :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    if-eqz v6, :cond_2

    .line 60
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v10

    .line 63
    goto :goto_1

    .line 59
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 60
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method
