.class Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreUriShortcutParser;
.super Lcom/android/launcher3/home/HomeDefaultLayoutParser$UriShortcutParser;
.source "HomeRestoreLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HomeRestoreLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreUriShortcutParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)V
    .locals 1

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreUriShortcutParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeDefaultLayoutParser$UriShortcutParser;-><init>(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)V

    .line 546
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreUriShortcutParser;->mIsRestore:Z

    .line 547
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Lcom/android/launcher3/home/HomeRestoreLayoutParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;
    .param p2, "x1"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser$1;

    .prologue
    .line 544
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreUriShortcutParser;-><init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 551
    const-string v3, "restored"

    invoke-static {p1, v3}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 552
    .local v2, "restored":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 553
    iget-object v3, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreUriShortcutParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    # getter for: Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mValues:Landroid/content/ContentValues;
    invoke-static {v3}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$2900(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "restored"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 555
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreUriShortcutParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    # getter for: Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mValues:Landroid/content/ContentValues;
    invoke-static {v3}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$3000(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 556
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/home/HomeDefaultLayoutParser$UriShortcutParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v0

    .line 557
    .local v0, "id":J
    iget-object v3, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreUriShortcutParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    const-string v4, "vcf"

    invoke-static {p1, v4}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/launcher3/home/HomeRestoreLayoutParser;->restoreContactShortcut(Ljava/lang/String;J)V
    invoke-static {v3, v4, v0, v1}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$3100(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Ljava/lang/String;J)V

    .line 558
    return-wide v0
.end method

.method protected parseIntent(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v3, 0x0

    .line 563
    const/4 v2, 0x0

    .line 566
    .local v2, "uri":Ljava/lang/String;
    :try_start_0
    const-string v4, "uri"

    invoke-static {p1, v4}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 567
    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 573
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, "com.samsung.knox.rcp.components"

    .line 575
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 578
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-object v1

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/net/URISyntaxException;
    const-string v4, "Launcher.HomeRestore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shortcut has malformed uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 570
    goto :goto_0
.end method
