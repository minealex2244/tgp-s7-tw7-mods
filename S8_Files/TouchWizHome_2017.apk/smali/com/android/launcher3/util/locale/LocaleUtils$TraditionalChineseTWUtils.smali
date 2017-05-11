.class Lcom/android/launcher3/util/locale/LocaleUtils$TraditionalChineseTWUtils;
.super Lcom/android/launcher3/util/locale/LocaleUtils$SimplifiedChineseUtils;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/locale/LocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TraditionalChineseTWUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/android/launcher3/util/locale/LocaleUtils$SimplifiedChineseUtils;-><init>()V

    .line 590
    return-void
.end method

.method private static getBPMFNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 15
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
    const/16 v14, 0x20

    const/4 v13, 0x0

    .line 594
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 595
    .local v6, "keys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 596
    .local v7, "maxNameLength":I
    const/16 v11, 0x1e

    if-le v7, v11, :cond_0

    .line 597
    const/16 v7, 0x1e

    .line 599
    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF;->getIntance()Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF;

    move-result-object v11

    invoke-virtual {p0, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 601
    .local v10, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;>;"
    if-nez v10, :cond_1

    .line 602
    const/4 v11, 0x0

    .line 656
    :goto_0
    return-object v11

    .line 605
    :cond_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 606
    .local v9, "tokenCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 607
    .local v1, "keyBpmf":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 611
    .local v3, "keyInitial":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 612
    .local v5, "keyOrignal":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 613
    .local v2, "keyBpmfNotMap":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 615
    .local v4, "keyInitialNotMap":Ljava/lang/StringBuilder;
    add-int/lit8 v0, v9, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_7

    .line 616
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;

    .line 620
    .local v8, "token":Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;
    const/4 v11, 0x2

    iget v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;->type:I

    if-ne v11, v12, :cond_3

    .line 621
    iget-object v11, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;->target:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->makeActionCodeHKTW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v13, v11}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    iget-object v11, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;->target:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->convertTraditionalChineseKeypadLettersToDigits(C)C

    move-result v11

    invoke-virtual {v3, v13, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 623
    iget-object v11, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;->target:Ljava/lang/String;

    invoke-virtual {v2, v13, v11}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    iget-object v11, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;->target:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v4, v13, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 646
    :goto_2
    iget-object v11, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;->source:Ljava/lang/String;

    invoke-virtual {v5, v13, v11}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 648
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 649
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 651
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 652
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 653
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 615
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 625
    :cond_3
    const/4 v11, 0x1

    iget v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;->type:I

    if-ne v11, v12, :cond_6

    .line 627
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_4

    .line 628
    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 632
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_5

    .line 633
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 636
    :cond_5
    iget-object v11, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;->source:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->makeActionCodeHKTW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v13, v11}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    iget-object v11, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;->source:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->convertTraditionalChineseKeypadLettersToDigits(C)C

    move-result v11

    invoke-virtual {v3, v13, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 638
    iget-object v11, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;->source:Ljava/lang/String;

    invoke-virtual {v2, v13, v11}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    iget-object v11, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;->source:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v4, v13, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 641
    :cond_6
    iget-object v11, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;->source:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->makeActionCodeHKTW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v13, v11}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    iget-object v11, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;->source:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->convertTraditionalChineseKeypadLettersToDigits(C)C

    move-result v11

    invoke-virtual {v3, v13, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 643
    iget-object v11, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;->source:Ljava/lang/String;

    invoke-virtual {v2, v13, v11}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    iget-object v11, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;->source:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v4, v13, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 656
    .end local v8    # "token":Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;
    :cond_7
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    goto/16 :goto_0
.end method


# virtual methods
.method public getConsistKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 688
    const/16 v8, 0xa0

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 689
    .local v6, "trimmedName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 690
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 691
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v7

    .line 692
    .local v7, "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    # invokes: Lcom/android/launcher3/util/locale/LocaleUtils;->isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    invoke-static {v7}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$700(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 693
    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 694
    .local v3, "tmpDisplayName":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF;->getIntance()Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 695
    .local v5, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;>;"
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 696
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 697
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;

    .line 698
    .local v4, "token":Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;
    const/4 v8, 0x2

    iget v9, v4, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;->type:I

    if-ne v8, v9, :cond_1

    .line 699
    iget-object v8, v4, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;->target:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    .end local v4    # "token":Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 713
    .end local v0    # "ch":C
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "tmpDisplayName":Ljava/lang/String;
    .end local v5    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;>;"
    .end local v7    # "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    :goto_1
    return-object v1

    .line 701
    .restart local v0    # "ch":C
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "tmpDisplayName":Ljava/lang/String;
    .restart local v4    # "token":Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;
    .restart local v5    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;>;"
    .restart local v7    # "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    :cond_1
    iget-object v8, v4, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;->source:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 713
    .end local v0    # "ch":C
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "tmpDisplayName":Ljava/lang/String;
    .end local v4    # "token":Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;
    .end local v5    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;>;"
    .end local v7    # "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/launcher3/util/locale/LocaleUtils$SimplifiedChineseUtils;->getConsistKey(Ljava/lang/String;)Ljava/lang/String;

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
    .line 718
    invoke-static {p1}, Lcom/android/launcher3/util/locale/LocaleUtils$TraditionalChineseTWUtils;->getBPMFNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x20

    .line 661
    invoke-static {}, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF;->getIntance()Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 662
    .local v2, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;>;"
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 664
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;

    .line 667
    .local v1, "token":Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;
    const/4 v4, 0x2

    iget v5, v1, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;->type:I

    if-ne v4, v5, :cond_1

    .line 668
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 669
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 671
    :cond_0
    iget-object v4, v1, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;->target:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 673
    iget-object v4, v1, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;->source:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 675
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 676
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 678
    :cond_2
    iget-object v4, v1, Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;->source:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 681
    .end local v1    # "token":Lcom/android/launcher3/util/locale/hanzi/HanziToBPMF$Token;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 683
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v3

    :cond_4
    invoke-super {p0, p1}, Lcom/android/launcher3/util/locale/LocaleUtils$SimplifiedChineseUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
