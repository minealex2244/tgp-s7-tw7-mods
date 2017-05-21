.class Lcom/android/launcher3/util/locale/LocaleUtils$SimplifiedChineseUtils;
.super Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/locale/LocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimplifiedChineseUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;-><init>()V

    .line 325
    return-void
.end method

.method private static getPinyinNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 12
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x0

    .line 329
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 330
    .local v4, "keys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin;->getInstance()Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 331
    .local v7, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 332
    .local v6, "tokenCount":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .local v3, "keyPinyin":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .local v1, "keyInitial":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .local v2, "keyOriginal":Ljava/lang/StringBuilder;
    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 339
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;

    .line 343
    .local v5, "token":Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;
    const/4 v8, 0x3

    iget v9, v5, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;->type:I

    if-ne v8, v9, :cond_0

    .line 338
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 346
    :cond_0
    const/4 v8, 0x2

    iget v9, v5, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;->type:I

    if-ne v8, v9, :cond_2

    .line 347
    iget-object v8, v5, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v3, v10, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget-object v8, v5, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v1, v10, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 360
    :cond_1
    :goto_2
    iget-object v8, v5, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v2, v10, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 349
    :cond_2
    const/4 v8, 0x1

    iget v9, v5, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;->type:I

    if-ne v8, v9, :cond_1

    .line 351
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 352
    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 354
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 355
    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 357
    :cond_4
    iget-object v8, v5, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v3, v10, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    iget-object v8, v5, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v1, v10, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 365
    .end local v5    # "token":Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;
    :cond_5
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    return-object v8
.end method


# virtual methods
.method public getConsistKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 397
    const/16 v7, 0xa0

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 398
    .local v5, "trimmedName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 399
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 400
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v6

    .line 401
    .local v6, "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    # invokes: Lcom/android/launcher3/util/locale/LocaleUtils;->isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    invoke-static {v6}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$700(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 403
    invoke-static {}, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin;->getInstance()Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin;

    move-result-object v7

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 404
    .local v4, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;>;"
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;

    .line 409
    .local v3, "token":Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;
    const/4 v7, 0x2

    iget v8, v3, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;->type:I

    if-ne v7, v8, :cond_1

    .line 410
    iget-object v7, v3, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .end local v3    # "token":Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 426
    .end local v0    # "ch":C
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;>;"
    .end local v6    # "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    :goto_1
    return-object v1

    .line 412
    .restart local v0    # "ch":C
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "token":Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;
    .restart local v4    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;>;"
    .restart local v6    # "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    :cond_1
    iget-object v7, v3, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 418
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "token":Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;
    :cond_2
    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    goto :goto_1

    .line 426
    .end local v0    # "ch":C
    .end local v1    # "result":Ljava/lang/String;
    .end local v4    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;>;"
    .end local v6    # "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    :cond_3
    invoke-super {p0, p1}, Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;->getConsistKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    invoke-static {p1}, Lcom/android/launcher3/util/locale/LocaleUtils$SimplifiedChineseUtils;->getPinyinNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x20

    .line 370
    invoke-static {}, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin;->getInstance()Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 371
    .local v2, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;>;"
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;

    .line 376
    .local v1, "token":Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;
    const/4 v4, 0x2

    iget v5, v1, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;->type:I

    if-ne v4, v5, :cond_1

    .line 377
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 378
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 380
    :cond_0
    iget-object v4, v1, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    iget-object v4, v1, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 385
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 387
    :cond_2
    iget-object v4, v1, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 390
    .end local v1    # "token":Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 392
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local p1    # "name":Ljava/lang/String;
    :cond_4
    return-object p1
.end method
