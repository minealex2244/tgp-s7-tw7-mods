.class public Lcom/android/launcher3/home/HomeBnrHelper;
.super Ljava/lang/Object;
.source "HomeBnrHelper.java"

# interfaces
.implements Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;


# static fields
.field private static final TAG:Ljava/lang/String; = "Launcher.HomeBnr"


# instance fields
.field private isPossibleHomeBackup:Z

.field private isPossibleHomeOnlyBackup:Z

.field private mContext:Landroid/content/Context;

.field private mLauncherPrefix:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mLauncherPrefix:Z

    return-void
.end method

.method private backupApplicationItem(Landroid/content/ComponentName;Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 15
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "cursorInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .param p4, "source"    # Ljava/lang/String;
    .param p5, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    const-string v12, "LCExtractorHome"

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 425
    .local v8, "isLCExtractor":Z
    if-eqz v8, :cond_7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x3

    iget-boolean v14, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mLauncherPrefix:Z

    invoke-static {v13, v14}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "attrPrefix":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/launcher3/common/model/CursorInfo;->containerIndex:I

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 428
    .local v6, "containerType":J
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 429
    .local v11, "screen":I
    const-wide/16 v12, -0x64

    cmp-long v12, v6, v12

    if-nez v12, :cond_0

    .line 430
    const-string v12, "screenRank"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 432
    :cond_0
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellXIndex:I

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 433
    .local v3, "cellX":Ljava/lang/String;
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellYIndex:I

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 435
    .local v4, "cellY":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 436
    .local v9, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 438
    .local v5, "className":Ljava/lang/String;
    const-string v12, "\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 439
    if-eqz v8, :cond_1

    .line 440
    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 441
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    invoke-static {v13, v9}, Lcom/android/launcher3/Utilities;->getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 442
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 444
    :cond_1
    const/4 v12, 0x0

    const-string v13, "favorite"

    move-object/from16 v0, p5

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 445
    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "screen"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p5

    invoke-interface {v0, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 446
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 447
    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "packageName"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p5

    invoke-interface {v0, v12, v13, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 449
    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 450
    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "className"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p5

    invoke-interface {v0, v12, v13, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 453
    :cond_3
    const-wide/16 v12, -0x64

    cmp-long v12, v6, v12

    if-nez v12, :cond_5

    .line 454
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 455
    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p5

    invoke-interface {v0, v12, v13, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 457
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 458
    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "y"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p5

    invoke-interface {v0, v12, v13, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 462
    :cond_5
    const-string v12, "SCLOUD"

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 463
    const/4 v12, 0x4

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 464
    .local v10, "restored":Ljava/lang/String;
    const/4 v12, 0x0

    const-string v13, "restored"

    move-object/from16 v0, p5

    invoke-interface {v0, v12, v13, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 467
    .end local v10    # "restored":Ljava/lang/String;
    :cond_6
    const/4 v12, 0x0

    const-string v13, "favorite"

    move-object/from16 v0, p5

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 468
    return-void

    .line 425
    .end local v2    # "attrPrefix":Ljava/lang/String;
    .end local v3    # "cellX":Ljava/lang/String;
    .end local v4    # "cellY":Ljava/lang/String;
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "containerType":J
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v11    # "screen":I
    :cond_7
    const-string v2, ""

    goto/16 :goto_0
.end method

.method private backupAppsButton(ILorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "screen"    # I
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 812
    const-string v0, "\n"

    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 813
    const-string v0, "appsbutton"

    invoke-interface {p2, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 814
    const-string v0, "screen"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 815
    const-string v0, "appsbutton"

    invoke-interface {p2, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 816
    return-void
.end method

.method private backupContactShortcut(Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 20
    .param p1, "intentDescription"    # Ljava/lang/String;
    .param p2, "serialize"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    .prologue
    .line 822
    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 828
    .local v14, "intent":Landroid/content/Intent;
    if-nez v14, :cond_1

    .line 877
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 823
    :catch_0
    move-exception v12

    .line 824
    .local v12, "e":Ljava/net/URISyntaxException;
    const-string v4, "Launcher.HomeBnr"

    const-string v5, "return Intent.parseUri, URISyntaxException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 832
    .end local v12    # "e":Ljava/net/URISyntaxException;
    .restart local v14    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {v14}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    .line 833
    .local v15, "lookupUri":Landroid/net/Uri;
    if-eqz v15, :cond_0

    const-string v4, "com.android.contacts"

    invoke-virtual {v15}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 834
    const-string v4, "Launcher.HomeBnr"

    const-string v5, "vcf file making..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/4 v9, 0x0

    .line 837
    .local v9, "composer":Lcom/android/vcard/VCardComposer;
    :try_start_1
    sget-object v4, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    .line 838
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "for_export_only"

    const-string v6, "1"

    .line 839
    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 841
    .local v7, "contentUriForRawContactsEntity":Landroid/net/Uri;
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 842
    .local v8, "builder":Landroid/net/Uri$Builder;
    const-string v4, "directory"

    const-wide/16 v18, 0x0

    .line 843
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 842
    invoke-virtual {v8, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 844
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 846
    .local v3, "contactsUri":Landroid/net/Uri;
    const-string v4, "default"

    invoke-static {v4}, Lcom/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v16

    .line 847
    .local v16, "vcardType":I
    new-instance v2, Lcom/android/vcard/VCardComposer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    move/from16 v0, v16

    invoke-direct {v2, v4, v0, v5}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 849
    .end local v9    # "composer":Lcom/android/vcard/VCardComposer;
    .local v2, "composer":Lcom/android/vcard/VCardComposer;
    :try_start_2
    invoke-static {v15}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 850
    .local v10, "contactId":J
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 851
    .local v13, "inBuilder":Ljava/lang/StringBuilder;
    const-string v4, "_id"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 852
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 854
    const-string v4, "Launcher.HomeBnr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selection : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 858
    const-string v4, "Launcher.HomeBnr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initialization failed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 872
    if-eqz v2, :cond_0

    .line 873
    invoke-virtual {v2}, Lcom/android/vcard/VCardComposer;->terminate()V

    goto/16 :goto_0

    .line 862
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Lcom/android/vcard/VCardComposer;->getCount()I

    move-result v4

    if-eqz v4, :cond_3

    .line 863
    const/4 v4, 0x0

    const-string v5, "vcf"

    invoke-virtual {v2}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 864
    const-string v4, "Launcher.HomeBnr"

    const-string v5, "vcf file make success"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 872
    :goto_1
    if-eqz v2, :cond_0

    .line 873
    invoke-virtual {v2}, Lcom/android/vcard/VCardComposer;->terminate()V

    goto/16 :goto_0

    .line 866
    :cond_3
    :try_start_4
    const-string v4, "Launcher.HomeBnr"

    const-string v5, "not have composer"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 868
    .end local v10    # "contactId":J
    .end local v13    # "inBuilder":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v12

    .line 869
    .end local v3    # "contactsUri":Landroid/net/Uri;
    .end local v7    # "contentUriForRawContactsEntity":Landroid/net/Uri;
    .end local v8    # "builder":Landroid/net/Uri$Builder;
    .end local v16    # "vcardType":I
    .local v12, "e":Ljava/lang/Exception;
    :goto_2
    const/4 v4, 0x1

    :try_start_5
    move-object/from16 v0, p3

    iput v4, v0, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 870
    const-string v4, "Launcher.HomeBnr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backupContactShortcut Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 872
    if-eqz v2, :cond_0

    .line 873
    invoke-virtual {v2}, Lcom/android/vcard/VCardComposer;->terminate()V

    goto/16 :goto_0

    .line 872
    .end local v2    # "composer":Lcom/android/vcard/VCardComposer;
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v9    # "composer":Lcom/android/vcard/VCardComposer;
    :catchall_0
    move-exception v4

    move-object v2, v9

    .end local v9    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v2    # "composer":Lcom/android/vcard/VCardComposer;
    :goto_3
    if-eqz v2, :cond_4

    .line 873
    invoke-virtual {v2}, Lcom/android/vcard/VCardComposer;->terminate()V

    :cond_4
    throw v4

    .line 872
    :catchall_1
    move-exception v4

    goto :goto_3

    .line 868
    .end local v2    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v9    # "composer":Lcom/android/vcard/VCardComposer;
    :catch_2
    move-exception v12

    move-object v2, v9

    .end local v9    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v2    # "composer":Lcom/android/vcard/VCardComposer;
    goto :goto_2
.end method

.method private backupFolderItem(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Landroid/content/ContentResolver;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Landroid/net/Uri;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 18
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "cursorInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .param p3, "cr"    # Landroid/content/ContentResolver;
    .param p4, "source"    # Ljava/lang/String;
    .param p5, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p6, "uri"    # Landroid/net/Uri;
    .param p7, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 626
    const-string v3, "LCExtractorHome"

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 627
    .local v11, "isLCExtractor":Z
    if-eqz v11, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/launcher3/home/HomeBnrHelper;->mLauncherPrefix:Z

    invoke-static {v6, v7}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 629
    .local v2, "attrPrefix":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 630
    .local v4, "id":J
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/launcher3/common/model/CursorInfo;->containerIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 631
    .local v14, "containerType":J
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 632
    .local v16, "screen":I
    const-wide/16 v6, -0x64

    cmp-long v3, v14, v6

    if-nez v3, :cond_0

    .line 633
    const-string v3, "screenRank"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 635
    :cond_0
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellXIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 636
    .local v12, "cellX":Ljava/lang/String;
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellYIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 637
    .local v13, "cellY":Ljava/lang/String;
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 639
    .local v17, "title":Ljava/lang/String;
    const-string v3, "\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 640
    if-eqz v11, :cond_1

    .line 641
    const/4 v3, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 642
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " folder : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 643
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 645
    :cond_1
    const/4 v3, 0x0

    const-string v6, "folder"

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 646
    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "screen"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 647
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 648
    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "title"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-interface {v0, v3, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 651
    :cond_2
    const-wide/16 v6, -0x64

    cmp-long v3, v14, v6

    if-nez v3, :cond_4

    .line 652
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 653
    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v6, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 655
    :cond_3
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 656
    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "y"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v6, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    move-object/from16 v3, p0

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 660
    invoke-direct/range {v3 .. v11}, Lcom/android/launcher3/home/HomeBnrHelper;->backupFolderItemById(JLjava/lang/String;Landroid/content/ContentResolver;Lorg/xmlpull/v1/XmlSerializer;Landroid/net/Uri;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Z)V

    .line 662
    if-eqz v11, :cond_5

    .line 663
    const/4 v3, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 665
    :cond_5
    const/4 v3, 0x0

    const-string v6, "folder"

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 666
    return-void

    .line 627
    .end local v2    # "attrPrefix":Ljava/lang/String;
    .end local v4    # "id":J
    .end local v12    # "cellX":Ljava/lang/String;
    .end local v13    # "cellY":Ljava/lang/String;
    .end local v14    # "containerType":J
    .end local v16    # "screen":I
    .end local v17    # "title":Ljava/lang/String;
    :cond_6
    const-string v2, ""

    goto/16 :goto_0
.end method

.method private backupFolderItemById(JLjava/lang/String;Landroid/content/ContentResolver;Lorg/xmlpull/v1/XmlSerializer;Landroid/net/Uri;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Z)V
    .locals 29
    .param p1, "folderId"    # J
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "cr"    # Landroid/content/ContentResolver;
    .param p5, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p6, "uri"    # Landroid/net/Uri;
    .param p7, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;
    .param p8, "isLCExtractor"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 671
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "container="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    .line 672
    invoke-static {v5}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getUserSelectionArg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 673
    .local v7, "selection":Ljava/lang/String;
    const-string v9, "rank"

    .line 674
    .local v9, "sortOrder":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 676
    .local v13, "cursor":Landroid/database/Cursor;
    if-nez v13, :cond_0

    .line 677
    const/4 v4, 0x1

    move-object/from16 v0, p7

    iput v4, v0, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 678
    const-string v4, "Launcher.HomeBnr"

    const-string v5, "backupFolderItemById, fail to open cursor"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :goto_0
    return-void

    .line 682
    :cond_0
    if-eqz p8, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/launcher3/home/HomeBnrHelper;->mLauncherPrefix:Z

    invoke-static {v5, v6}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 684
    .local v10, "attrPrefix":Ljava/lang/String;
    :goto_1
    new-instance v14, Lcom/android/launcher3/common/model/CursorInfo;

    invoke-direct {v14, v13}, Lcom/android/launcher3/common/model/CursorInfo;-><init>(Landroid/database/Cursor;)V

    .line 686
    .local v14, "cursorInfo":Lcom/android/launcher3/common/model/CursorInfo;
    :cond_1
    :goto_2
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 687
    iget v4, v14, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 688
    .local v23, "itemType":I
    iget v4, v14, Lcom/android/launcher3/common/model/CursorInfo;->rankIndex:I

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 689
    .local v25, "rank":I
    iget v4, v14, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 690
    .local v28, "title":Ljava/lang/String;
    iget v4, v14, Lcom/android/launcher3/common/model/CursorInfo;->intentIndex:I

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 691
    .local v21, "intent":Ljava/lang/String;
    iget v4, v14, Lcom/android/launcher3/common/model/CursorInfo;->hiddenIndex:I

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 692
    .local v17, "hidden":I
    iget v4, v14, Lcom/android/launcher3/common/model/CursorInfo;->restoredIndex:I

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 694
    .local v26, "restore":I
    if-nez v17, :cond_1

    if-nez v26, :cond_1

    .line 698
    const/4 v12, 0x0

    .line 700
    .local v12, "componentName":Landroid/content/ComponentName;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 702
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, v21

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v22

    .line 706
    .local v22, "intentInfo":Landroid/content/Intent;
    :try_start_2
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    .line 709
    .end local v22    # "intentInfo":Landroid/content/Intent;
    :cond_2
    const/16 v24, 0x0

    .line 710
    .local v24, "packageName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 711
    .local v11, "className":Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 712
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v24

    .line 713
    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    .line 716
    :cond_3
    packed-switch v23, :pswitch_data_0

    goto :goto_2

    .line 718
    :pswitch_0
    if-eqz v12, :cond_1

    .line 721
    const-string v4, "\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 722
    if-eqz p8, :cond_4

    .line 723
    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 724
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Lcom/android/launcher3/Utilities;->getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 725
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 727
    :cond_4
    const/4 v4, 0x0

    const-string v5, "favorite"

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 728
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "screen"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 729
    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 728
    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 730
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 731
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "packageName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p5

    move-object/from16 v1, v24

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 734
    :cond_5
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 735
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "className"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 739
    :cond_6
    const-string v4, "SCLOUD"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 740
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    .line 741
    .local v27, "restored":Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "restored"

    move-object/from16 v0, p5

    move-object/from16 v1, v27

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 743
    .end local v27    # "restored":Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    const-string v5, "favorite"

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 803
    .end local v11    # "className":Ljava/lang/String;
    .end local v12    # "componentName":Landroid/content/ComponentName;
    .end local v17    # "hidden":I
    .end local v21    # "intent":Ljava/lang/String;
    .end local v23    # "itemType":I
    .end local v24    # "packageName":Ljava/lang/String;
    .end local v25    # "rank":I
    .end local v26    # "restore":I
    .end local v28    # "title":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_8

    .line 804
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v4

    .line 682
    .end local v10    # "attrPrefix":Ljava/lang/String;
    .end local v14    # "cursorInfo":Lcom/android/launcher3/common/model/CursorInfo;
    :cond_9
    const-string v10, ""

    goto/16 :goto_1

    .line 703
    .restart local v10    # "attrPrefix":Ljava/lang/String;
    .restart local v12    # "componentName":Landroid/content/ComponentName;
    .restart local v14    # "cursorInfo":Lcom/android/launcher3/common/model/CursorInfo;
    .restart local v17    # "hidden":I
    .restart local v21    # "intent":Ljava/lang/String;
    .restart local v23    # "itemType":I
    .restart local v25    # "rank":I
    .restart local v26    # "restore":I
    .restart local v28    # "title":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 704
    .local v16, "e":Ljava/net/URISyntaxException;
    goto/16 :goto_2

    .line 747
    .end local v16    # "e":Ljava/net/URISyntaxException;
    .restart local v11    # "className":Ljava/lang/String;
    .restart local v24    # "packageName":Ljava/lang/String;
    :pswitch_1
    :try_start_3
    const-string v4, "com.samsung.knox.rcp.components"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 751
    if-eqz p8, :cond_a

    .line 752
    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 753
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " shortcut : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 754
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 757
    :cond_a
    const-string v4, "\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 758
    const/4 v4, 0x0

    const-string v5, "shortcut"

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 759
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "screen"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 760
    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 759
    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 761
    iget v4, v14, Lcom/android/launcher3/common/model/CursorInfo;->iconTypeIndex:I

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 762
    .local v20, "iconType":I
    if-nez v20, :cond_c

    .line 763
    iget v4, v14, Lcom/android/launcher3/common/model/CursorInfo;->iconPackageIndex:I

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 764
    .local v18, "iconPackage":Ljava/lang/String;
    iget v4, v14, Lcom/android/launcher3/common/model/CursorInfo;->iconResourceIndex:I

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 765
    .local v19, "iconResource":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 766
    const/4 v4, 0x0

    const-string v5, "iconPackage"

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 768
    :cond_b
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 769
    const/4 v4, 0x0

    const-string v5, "iconResource"

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 773
    .end local v18    # "iconPackage":Ljava/lang/String;
    .end local v19    # "iconResource":Ljava/lang/String;
    :cond_c
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 774
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p5

    move-object/from16 v1, v28

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 777
    :cond_d
    const-string v4, "SCLOUD"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 778
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    .line 779
    .restart local v27    # "restored":Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "restored"

    move-object/from16 v0, p5

    move-object/from16 v1, v27

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 782
    .end local v27    # "restored":Ljava/lang/String;
    :cond_e
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 783
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "uri"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p5

    move-object/from16 v1, v21

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 786
    :cond_f
    iget v4, v14, Lcom/android/launcher3/common/model/CursorInfo;->iconIndex:I

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 787
    .local v15, "data":[B
    if-eqz v15, :cond_10

    array-length v4, v15

    if-lez v4, :cond_10

    if-nez p8, :cond_10

    .line 788
    const/4 v4, 0x0

    const-string v5, "icon"

    const/4 v6, 0x2

    .line 789
    invoke-static {v15, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .line 788
    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 792
    :cond_10
    const-string v4, "SCLOUD"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 793
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeBnrHelper;->backupContactShortcut(Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 795
    :cond_11
    const/4 v4, 0x0

    const-string v5, "shortcut"

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 803
    .end local v11    # "className":Ljava/lang/String;
    .end local v12    # "componentName":Landroid/content/ComponentName;
    .end local v15    # "data":[B
    .end local v17    # "hidden":I
    .end local v20    # "iconType":I
    .end local v21    # "intent":Ljava/lang/String;
    .end local v23    # "itemType":I
    .end local v24    # "packageName":Ljava/lang/String;
    .end local v25    # "rank":I
    .end local v26    # "restore":I
    .end local v28    # "title":Ljava/lang/String;
    :cond_12
    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_13

    .line 804
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 808
    :cond_13
    const-string v4, "\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .line 716
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private backupHomeScreenContent(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 4
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    .prologue
    .line 267
    iget-boolean v1, p0, Lcom/android/launcher3/home/HomeBnrHelper;->isPossibleHomeOnlyBackup:Z

    if-nez v1, :cond_0

    .line 282
    :goto_0
    return-void

    .line 271
    :cond_0
    const-string v1, "Launcher.HomeBnr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sIsHomeOnly : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :try_start_0
    const-string v1, "\n"

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 274
    const-string v1, "\n"

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 275
    const/4 v1, 0x0

    const-string v2, "screenContent"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 276
    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 277
    const/4 v1, 0x0

    const-string v2, "screenContent"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    iput v1, p2, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 280
    const-string v1, "Launcher.HomeBnr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backupHomeScreenContent Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private backupHotseat(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 15
    .param p1, "container"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p4, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    .prologue
    .line 317
    iget-object v3, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 318
    .local v1, "cr":Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "container=-101 and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    .line 319
    invoke-static {v5}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getUserSelectionArg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 320
    .local v4, "selection":Ljava/lang/String;
    const-string v14, "container desc, screen"

    .line 322
    .local v14, "sortOrder":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getFavoritesUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 323
    .local v2, "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string v6, "container desc, screen"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 325
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_1

    .line 326
    const/4 v3, 0x1

    move-object/from16 v0, p4

    iput v3, v0, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 327
    const-string v3, "Launcher.HomeBnr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backupHotseat, fail to open cursor, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object v9, v1

    move-object/from16 v10, p3

    move-object v11, v2

    move-object/from16 v12, p4

    .line 333
    invoke-direct/range {v5 .. v12}, Lcom/android/launcher3/home/HomeBnrHelper;->backupItem(Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentResolver;Lorg/xmlpull/v1/XmlSerializer;Landroid/net/Uri;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 340
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 335
    :catch_0
    move-exception v13

    .line 336
    .local v13, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    :try_start_1
    move-object/from16 v0, p4

    iput v3, v0, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 337
    const-string v3, "Launcher.HomeBnr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backupHotseat Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 340
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 339
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 340
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method

.method private backupItem(Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentResolver;Lorg/xmlpull/v1/XmlSerializer;Landroid/net/Uri;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 25
    .param p1, "container"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "cr"    # Landroid/content/ContentResolver;
    .param p5, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p6, "uri"    # Landroid/net/Uri;
    .param p7, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    const-string v4, "LCExtractorHome"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 350
    .local v21, "isLCExtractor":Z
    const-string v4, "\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 351
    if-eqz v21, :cond_0

    .line 352
    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 354
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 356
    new-instance v7, Lcom/android/launcher3/common/model/CursorInfo;

    move-object/from16 v0, p3

    invoke-direct {v7, v0}, Lcom/android/launcher3/common/model/CursorInfo;-><init>(Landroid/database/Cursor;)V

    .line 358
    .local v7, "cursorInfo":Lcom/android/launcher3/common/model/CursorInfo;
    :cond_1
    iget v4, v7, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 359
    .local v22, "itemType":I
    iget v4, v7, Lcom/android/launcher3/common/model/CursorInfo;->intentIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 360
    .local v9, "intent":Ljava/lang/String;
    iget v4, v7, Lcom/android/launcher3/common/model/CursorInfo;->hiddenIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 361
    .local v20, "hidden":I
    iget v4, v7, Lcom/android/launcher3/common/model/CursorInfo;->restoredIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 363
    .local v24, "restore":I
    if-nez v20, :cond_2

    if-eqz v24, :cond_5

    .line 409
    .end local v9    # "intent":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 411
    const-string v4, "\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 412
    if-eqz v21, :cond_3

    .line 413
    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 415
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 416
    const-string v4, "home"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v21, :cond_4

    .line 417
    const-string v4, "\n\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 419
    :cond_4
    return-void

    .line 367
    .restart local v9    # "intent":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    .line 368
    .local v5, "componentName":Landroid/content/ComponentName;
    const/4 v10, 0x0

    .line 369
    .local v10, "intentInfo":Landroid/content/Intent;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 371
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v9, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 375
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 378
    :cond_6
    packed-switch v22, :pswitch_data_0

    .line 406
    .end local v9    # "intent":Ljava/lang/String;
    :cond_7
    :goto_1
    :pswitch_0
    if-eqz v21, :cond_2

    .line 407
    const-string v4, "\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 372
    .restart local v9    # "intent":Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 373
    .local v19, "e":Ljava/net/URISyntaxException;
    goto :goto_0

    .line 380
    .end local v19    # "e":Ljava/net/URISyntaxException;
    :pswitch_1
    if-eqz v5, :cond_7

    move-object/from16 v4, p0

    move-object/from16 v6, p3

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    .line 383
    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/home/HomeBnrHelper;->backupApplicationItem(Landroid/content/ComponentName;Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_1

    .line 387
    :pswitch_2
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    .line 388
    .local v23, "packageName":Ljava/lang/String;
    :goto_2
    const-string v4, "com.samsung.knox.rcp.components"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    move-object/from16 v8, p0

    move-object/from16 v11, p3

    move-object v12, v7

    move-object/from16 v13, p2

    move-object/from16 v14, p5

    move-object/from16 v15, p7

    .line 391
    invoke-direct/range {v8 .. v15}, Lcom/android/launcher3/home/HomeBnrHelper;->backupShortcutItem(Ljava/lang/String;Landroid/content/Intent;Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    goto :goto_1

    .line 387
    .end local v23    # "packageName":Ljava/lang/String;
    :cond_8
    const/16 v23, 0x0

    goto :goto_2

    .line 395
    :pswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/launcher3/home/HomeBnrHelper;->backupWidgetItem(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_1

    :pswitch_4
    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move-object v13, v7

    move-object/from16 v14, p4

    move-object/from16 v15, p2

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    move-object/from16 v18, p7

    .line 399
    invoke-direct/range {v11 .. v18}, Lcom/android/launcher3/home/HomeBnrHelper;->backupFolderItem(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Landroid/content/ContentResolver;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Landroid/net/Uri;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    goto :goto_1

    .line 378
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private backupPageSetting(Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 11
    .param p1, "container"    # Ljava/lang/String;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    .prologue
    .line 171
    const-string v8, "homeOnly"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/android/launcher3/home/HomeBnrHelper;->isPossibleHomeOnlyBackup:Z

    if-nez v8, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    const-string v8, "home"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/android/launcher3/home/HomeBnrHelper;->isPossibleHomeBackup:Z

    if-eqz v8, :cond_0

    .line 177
    :cond_2
    const/4 v8, 0x2

    new-array v0, v8, [I

    .line 178
    .local v0, "cellXY":[I
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v0, v9

    aput v10, v0, v8

    .line 181
    const-string v8, "easy"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 182
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x5f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 183
    .local v6, "suffix":Ljava/lang/String;
    const-string v8, "home_easy"

    invoke-static {v8}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getWorkspaceScreenTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 185
    .local v7, "tableName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    const-string v9, "com.sec.android.app.launcher.homeeasy.defaultpage.prefs"

    invoke-static {v8, v9}, Lcom/android/launcher3/Utilities;->getHomeDefaultPageKey(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 205
    .local v5, "screenIndex":I
    :goto_1
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/launcher3/common/model/FavoritesProvider;->getItemCount(Ljava/lang/String;)I

    move-result v4

    .line 206
    .local v4, "pageCount":I
    const-string v8, "Launcher.HomeBnr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "backupPageSetting container : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", pageCount : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :try_start_0
    const-string v8, "\n"

    invoke-interface {p2, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    const-string v8, "easy"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 212
    const/4 v8, 0x0

    aget v1, v0, v8

    .line 213
    .local v1, "countX":I
    const/4 v8, 0x1

    aget v2, v0, v8

    .line 215
    .local v2, "countY":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_3

    const/4 v8, -0x1

    if-ne v2, v8, :cond_4

    .line 216
    :cond_3
    iget-object v8, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0009

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 217
    iget-object v8, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b000a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 219
    :cond_4
    const-string v8, "Launcher.HomeBnr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "backupPageSetting home grid x = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", y = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v8, "\n"

    invoke-interface {p2, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 223
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Rows"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 225
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Rows"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 228
    const-string v8, "\n"

    invoke-interface {p2, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 229
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Columns"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 230
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 231
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Columns"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 235
    .end local v1    # "countX":I
    .end local v2    # "countY":I
    :cond_5
    const-string v8, "\n"

    invoke-interface {p2, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 236
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PageCount"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 237
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 238
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PageCount"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 241
    const-string v8, "\n"

    invoke-interface {p2, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 242
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ScreenIndex"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 243
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 244
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ScreenIndex"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 245
    :catch_0
    move-exception v3

    .line 246
    .local v3, "e":Ljava/lang/Exception;
    const/4 v8, 0x1

    iput v8, p3, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 247
    const-string v8, "Launcher.HomeBnr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "backupPageSetting Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 187
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "pageCount":I
    .end local v5    # "screenIndex":I
    .end local v6    # "suffix":Ljava/lang/String;
    .end local v7    # "tableName":Ljava/lang/String;
    :cond_6
    const-string v8, "homeOnly"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 188
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x5f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 189
    .restart local v6    # "suffix":Ljava/lang/String;
    const-string v8, "homeOnly"

    invoke-static {v8}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getWorkspaceScreenTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 190
    .restart local v7    # "tableName":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 191
    iget-object v8, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-static {v8, v0, v9}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentGridSize(Landroid/content/Context;[IZ)V

    .line 193
    :cond_7
    iget-object v8, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    const-string v9, "com.sec.android.app.launcher.homeonly.defaultpage.prefs"

    invoke-static {v8, v9}, Lcom/android/launcher3/Utilities;->getHomeDefaultPageKey(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .restart local v5    # "screenIndex":I
    goto/16 :goto_1

    .line 196
    .end local v5    # "screenIndex":I
    .end local v6    # "suffix":Ljava/lang/String;
    .end local v7    # "tableName":Ljava/lang/String;
    :cond_8
    const-string v6, ""

    .line 197
    .restart local v6    # "suffix":Ljava/lang/String;
    const-string v8, "home"

    invoke-static {v8}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getWorkspaceScreenTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 198
    .restart local v7    # "tableName":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 199
    iget-object v8, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v0, v9}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentGridSize(Landroid/content/Context;[IZ)V

    .line 201
    :cond_9
    iget-object v8, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    const-string v9, "com.sec.android.app.launcher.home.defaultpage.prefs"

    invoke-static {v8, v9}, Lcom/android/launcher3/Utilities;->getHomeDefaultPageKey(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .restart local v5    # "screenIndex":I
    goto/16 :goto_1
.end method

.method private backupShortcutItem(Ljava/lang/String;Landroid/content/Intent;Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 20
    .param p1, "intent"    # Ljava/lang/String;
    .param p2, "intentInfo"    # Landroid/content/Intent;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "cursorInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .param p5, "source"    # Ljava/lang/String;
    .param p6, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p7, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    const-string v17, "LCExtractorHome"

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 474
    .local v13, "isLCExtractor":Z
    if-eqz v13, :cond_2

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/home/HomeBnrHelper;->mLauncherPrefix:Z

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 476
    .local v4, "attrPrefix":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->containerIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 477
    .local v8, "containerType":J
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 478
    .local v15, "screen":I
    const-wide/16 v18, -0x64

    cmp-long v17, v8, v18

    if-nez v17, :cond_0

    .line 479
    const-string v17, "screenRank"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 481
    :cond_0
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellXIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 482
    .local v5, "cellX":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellYIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 483
    .local v6, "cellY":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 486
    .local v16, "title":Ljava/lang/String;
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.sec.launcher.action.SHOW_APPS_VIEW"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 488
    if-nez v13, :cond_1

    .line 489
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v15, v1}, Lcom/android/launcher3/home/HomeBnrHelper;->backupAppsButton(ILorg/xmlpull/v1/XmlSerializer;)V

    .line 552
    :cond_1
    :goto_1
    return-void

    .line 474
    .end local v4    # "attrPrefix":Ljava/lang/String;
    .end local v5    # "cellX":Ljava/lang/String;
    .end local v6    # "cellY":Ljava/lang/String;
    .end local v8    # "containerType":J
    .end local v15    # "screen":I
    .end local v16    # "title":Ljava/lang/String;
    :cond_2
    const-string v4, ""

    goto/16 :goto_0

    .line 494
    .restart local v4    # "attrPrefix":Ljava/lang/String;
    .restart local v5    # "cellX":Ljava/lang/String;
    .restart local v6    # "cellY":Ljava/lang/String;
    .restart local v8    # "containerType":J
    .restart local v15    # "screen":I
    .restart local v16    # "title":Ljava/lang/String;
    :cond_3
    const-string v17, "\n"

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 495
    if-eqz v13, :cond_4

    .line 496
    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 497
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " shortcut : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x20

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 498
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x2

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 501
    :cond_4
    const/16 v17, 0x0

    const-string v18, "shortcut"

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 502
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "screen"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 503
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->iconTypeIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 504
    .local v12, "iconType":I
    if-nez v12, :cond_6

    .line 505
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->iconPackageIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 506
    .local v10, "iconPackage":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->iconResourceIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 507
    .local v11, "iconResource":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    if-nez v13, :cond_5

    .line 508
    const/16 v17, 0x0

    const-string v18, "iconPackage"

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 511
    :cond_5
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    if-nez v13, :cond_6

    .line 512
    const/16 v17, 0x0

    const-string v18, "iconResource"

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 517
    .end local v10    # "iconPackage":Ljava/lang/String;
    .end local v11    # "iconResource":Ljava/lang/String;
    :cond_6
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 518
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "title"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 521
    :cond_7
    const-wide/16 v18, -0x64

    cmp-long v17, v8, v18

    if-nez v17, :cond_9

    .line 522
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 523
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 525
    :cond_8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 526
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "y"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 530
    :cond_9
    const-string v17, "SCLOUD"

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 531
    const/16 v17, 0x4

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 532
    .local v14, "restored":Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "restored"

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 535
    .end local v14    # "restored":Ljava/lang/String;
    :cond_a
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_b

    .line 536
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "uri"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 539
    :cond_b
    if-nez v13, :cond_c

    .line 540
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->iconIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 541
    .local v7, "data":[B
    if-eqz v7, :cond_c

    array-length v0, v7

    move/from16 v17, v0

    if-lez v17, :cond_c

    .line 542
    const/16 v17, 0x0

    const-string v18, "icon"

    const/16 v19, 0x2

    .line 543
    move/from16 v0, v19

    invoke-static {v7, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v19

    .line 542
    move-object/from16 v0, p6

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 547
    .end local v7    # "data":[B
    :cond_c
    const-string v17, "SCLOUD"

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_d

    .line 548
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeBnrHelper;->backupContactShortcut(Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 551
    :cond_d
    const/16 v17, 0x0

    const-string v18, "shortcut"

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1
.end method

.method private backupWidgetItem(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 22
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "cursorInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 557
    const-string v19, "LCExtractorHome"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 558
    .local v9, "isLCExtractor":Z
    if-eqz v9, :cond_b

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/home/HomeBnrHelper;->mLauncherPrefix:Z

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 560
    .local v5, "attrPrefix":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v18

    .line 561
    .local v18, "widgets":Landroid/appwidget/AppWidgetManager;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->appWidgetIdIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 562
    .local v4, "appWidgetId":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v17

    .line 564
    .local v17, "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v17, :cond_a

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    .line 565
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 566
    .local v12, "packageName":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 571
    .local v8, "className":Ljava/lang/String;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->containerIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 572
    .local v10, "containerType":J
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 573
    .local v14, "screen":I
    const-wide/16 v20, -0x64

    cmp-long v19, v10, v20

    if-nez v19, :cond_0

    .line 574
    const-string v19, "screenRank"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 576
    :cond_0
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellXIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 577
    .local v6, "cellX":Ljava/lang/String;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellYIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 578
    .local v7, "cellY":Ljava/lang/String;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->spanXIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 579
    .local v15, "spanX":Ljava/lang/String;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->spanYIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    .line 581
    .local v16, "spanY":Ljava/lang/String;
    const-string v19, "\n"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 582
    if-eqz v9, :cond_1

    .line 583
    const/16 v19, 0x2

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 584
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " appwidget : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    .line 585
    move-object/from16 v0, v20

    invoke-static {v0, v12}, Lcom/android/launcher3/Utilities;->getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 584
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 586
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x2

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 588
    :cond_1
    const/16 v19, 0x0

    const-string v20, "appwidget"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 589
    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "screen"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 590
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 591
    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "packageName"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 593
    :cond_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 594
    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "className"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 597
    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 598
    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "x"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 600
    :cond_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 601
    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "y"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 604
    :cond_5
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 605
    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "spanX"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 607
    :cond_6
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 608
    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "spanY"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 611
    :cond_7
    if-nez v9, :cond_8

    .line 612
    const/16 v19, 0x0

    const-string v20, "appWidgetID"

    .line 613
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    .line 612
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 616
    :cond_8
    const-string v19, "SCLOUD"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 617
    const/16 v19, 0x4

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 618
    .local v13, "restored":Ljava/lang/String;
    const/16 v19, 0x0

    const-string v20, "restored"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 620
    .end local v13    # "restored":Ljava/lang/String;
    :cond_9
    const/16 v19, 0x0

    const-string v20, "appwidget"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 621
    .end local v6    # "cellX":Ljava/lang/String;
    .end local v7    # "cellY":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v10    # "containerType":J
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v14    # "screen":I
    .end local v15    # "spanX":Ljava/lang/String;
    .end local v16    # "spanY":Ljava/lang/String;
    :cond_a
    return-void

    .line 558
    .end local v4    # "appWidgetId":I
    .end local v5    # "attrPrefix":Ljava/lang/String;
    .end local v17    # "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v18    # "widgets":Landroid/appwidget/AppWidgetManager;
    :cond_b
    const-string v5, ""

    goto/16 :goto_0
.end method

.method private backupWorkspace(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 11
    .param p1, "container"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p4, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    .prologue
    const/4 v1, 0x1

    .line 286
    iget-object v0, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 287
    .local v4, "cr":Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getFavoritesUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 288
    .local v6, "uri":Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getFavoritesTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 289
    .local v9, "favoriteTable":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getWorkspaceScreenTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 291
    .local v10, "screenTable":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v0

    .line 292
    invoke-virtual {v0, v9, v10}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadWorkspaceWithScreenRank(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 294
    .local v3, "cursor":Landroid/database/Cursor;
    if-nez v3, :cond_1

    .line 295
    iput v1, p4, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 296
    const-string v0, "Launcher.HomeBnr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupWorkspace, fail to open cursor, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    const-string v0, "\n"

    invoke-interface {p3, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v7, p4

    .line 303
    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/home/HomeBnrHelper;->backupItem(Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentResolver;Lorg/xmlpull/v1/XmlSerializer;Landroid/net/Uri;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 305
    :catch_0
    move-exception v8

    .line 306
    .local v8, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    :try_start_1
    iput v0, p4, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 307
    const-string v0, "Launcher.HomeBnr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupWorkspace Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 309
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 310
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private backupZeroPage(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    .prologue
    const/4 v5, 0x1

    .line 252
    iget-object v2, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v1

    .line 253
    .local v1, "zeroPageEnable":Z
    const-string v2, "Launcher.HomeBnr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zeroPageEnable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :try_start_0
    const-string v2, "\n"

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 256
    const-string v2, "\n"

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 257
    const/4 v2, 0x0

    const-string v3, "zeroPage"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 258
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 259
    const/4 v2, 0x0

    const-string v3, "zeroPage"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    iput v5, p2, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 262
    const-string v2, "Launcher.HomeBnr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backupZeroPage Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public backupCategory()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x2c

    .line 73
    iput-boolean v3, p0, Lcom/android/launcher3/home/HomeBnrHelper;->isPossibleHomeBackup:Z

    .line 74
    iput-boolean v3, p0, Lcom/android/launcher3/home/HomeBnrHelper;->isPossibleHomeOnlyBackup:Z

    .line 76
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    .local v0, "category":Ljava/lang/StringBuffer;
    const-string v3, "home"

    invoke-static {v3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getFavoritesTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "tableName":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->getItemCount(Ljava/lang/String;)I

    move-result v1

    .line 79
    .local v1, "count":I
    if-lez v1, :cond_0

    .line 80
    iput-boolean v5, p0, Lcom/android/launcher3/home/HomeBnrHelper;->isPossibleHomeBackup:Z

    .line 81
    const-string v3, "home"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 83
    const-string v3, "hotseat"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    const-string v3, "homeOnly"

    invoke-static {v3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getFavoritesTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->getItemCount(Ljava/lang/String;)I

    move-result v1

    .line 89
    if-lez v1, :cond_2

    .line 90
    iput-boolean v5, p0, Lcom/android/launcher3/home/HomeBnrHelper;->isPossibleHomeOnlyBackup:Z

    .line 91
    iget-boolean v3, p0, Lcom/android/launcher3/home/HomeBnrHelper;->isPossibleHomeBackup:Z

    if-eqz v3, :cond_1

    .line 92
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 94
    :cond_1
    const-string v3, "homeOnly"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 96
    const-string v3, "hotseat_homeOnly"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    :cond_2
    iget-boolean v3, p0, Lcom/android/launcher3/home/HomeBnrHelper;->isPossibleHomeBackup:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/launcher3/home/HomeBnrHelper;->isPossibleHomeOnlyBackup:Z

    if-eqz v3, :cond_4

    .line 101
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 102
    const-string v3, "zeroPage"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public backupLayout(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    .prologue
    .line 111
    const-string v2, "Launcher.HomeBnr"

    const-string v3, "backupLayout"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iput-object p1, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    .line 115
    const-string v2, "LCExtractorHome"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    const-string v2, "home"

    invoke-direct {p0, v2, p3, p2, p4}, Lcom/android/launcher3/home/HomeBnrHelper;->backupWorkspace(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 117
    const-string v2, "hotseat"

    invoke-direct {p0, v2, p3, p2, p4}, Lcom/android/launcher3/home/HomeBnrHelper;->backupHotseat(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const-string v2, "LCExtractorApps"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    const-string v2, "home"

    invoke-direct {p0, v2, p2, p4}, Lcom/android/launcher3/home/HomeBnrHelper;->backupPageSetting(Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 124
    invoke-direct {p0, p2, p4}, Lcom/android/launcher3/home/HomeBnrHelper;->backupZeroPage(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 125
    const-string v2, "home"

    invoke-direct {p0, v2, p3, p2, p4}, Lcom/android/launcher3/home/HomeBnrHelper;->backupWorkspace(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 126
    const-string v2, "hotseat"

    invoke-direct {p0, v2, p3, p2, p4}, Lcom/android/launcher3/home/HomeBnrHelper;->backupHotseat(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 128
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p4, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    if-nez v2, :cond_2

    .line 130
    const-string v2, "homeOnly"

    invoke-direct {p0, v2, p2, p4}, Lcom/android/launcher3/home/HomeBnrHelper;->backupPageSetting(Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 131
    invoke-direct {p0, p2, p4}, Lcom/android/launcher3/home/HomeBnrHelper;->backupHomeScreenContent(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 132
    const-string v2, "homeOnly"

    invoke-direct {p0, v2, p3, p2, p4}, Lcom/android/launcher3/home/HomeBnrHelper;->backupWorkspace(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 133
    const-string v2, "hotseat_homeOnly"

    invoke-direct {p0, v2, p3, p2, p4}, Lcom/android/launcher3/home/HomeBnrHelper;->backupHotseat(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 136
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p4, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    if-nez v2, :cond_0

    .line 138
    const-string v2, "easy"

    invoke-static {v2}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getFavoritesTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "tableName":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->getItemCount(Ljava/lang/String;)I

    move-result v0

    .line 140
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 143
    const-string v2, "easy"

    invoke-direct {p0, v2, p2, p4}, Lcom/android/launcher3/home/HomeBnrHelper;->backupPageSetting(Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 144
    const-string v2, "home_easy"

    invoke-direct {p0, v2, p3, p2, p4}, Lcom/android/launcher3/home/HomeBnrHelper;->backupWorkspace(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 145
    const-string v2, "hotseat_easy"

    invoke-direct {p0, v2, p3, p2, p4}, Lcom/android/launcher3/home/HomeBnrHelper;->backupHotseat(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    goto :goto_0
.end method

.method public restoreLayout(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "restoredTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 152
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v0

    .line 153
    .local v0, "favoritesProvider":Lcom/android/launcher3/common/model/FavoritesProvider;
    if-nez v0, :cond_1

    .line 154
    const-string v2, "Launcher.HomeBnr"

    const-string v3, "FavoritesProvider.getInstance() is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iput v4, p4, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    const-string v2, "Launcher.HomeBnr"

    const-string v3, "restoreLayout"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v1, Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-direct {v1, p1, v0, p2, p3}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/model/FavoritesProvider;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    .line 162
    .local v1, "layoutParser":Lcom/android/launcher3/common/model/DefaultLayoutParser;
    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->restoreFavorites(Lcom/android/launcher3/common/model/DefaultLayoutParser;)I

    move-result v2

    if-gez v2, :cond_0

    .line 163
    iput v4, p4, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    goto :goto_0
.end method
