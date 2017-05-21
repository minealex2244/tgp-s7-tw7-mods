.class Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/locale/LocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocaleUtilsBase"
.end annotation


# static fields
.field private static mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;


# direct methods
.method public constructor <init>()V
    .locals 11

    .prologue
    const/16 v10, 0x1104

    const/16 v9, 0x1101

    const/16 v6, 0xae0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-instance v0, Landroid/icu/text/AlphabeticIndex;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/icu/text/AlphabeticIndex;-><init>(Ljava/util/Locale;)V

    .line 222
    .local v0, "ai":Landroid/icu/text/AlphabeticIndex;
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v2

    .line 223
    .local v2, "localeList":Landroid/os/LocaleList;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-le v3, v7, :cond_0

    .line 224
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 225
    new-array v3, v7, [Ljava/util/Locale;

    invoke-virtual {v2, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0, v3}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v1    # "i":I
    :cond_0
    const/16 v3, 0x190

    invoke-virtual {v0, v3}, Landroid/icu/text/AlphabeticIndex;->setMaxLabelCount(I)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-array v4, v7, [Ljava/util/Locale;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v5, v4, v8

    .line 229
    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-array v4, v7, [Ljava/util/Locale;

    sget-object v5, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    aput-object v5, v4, v8

    .line 230
    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-array v4, v7, [Ljava/util/Locale;

    sget-object v5, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    aput-object v5, v4, v8

    .line 231
    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-array v4, v7, [Ljava/util/Locale;

    .line 232
    # getter for: Lcom/android/launcher3/util/locale/LocaleUtils;->LOCALE_THAI:Ljava/util/Locale;
    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$600()Ljava/util/Locale;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-array v4, v7, [Ljava/util/Locale;

    .line 233
    # getter for: Lcom/android/launcher3/util/locale/LocaleUtils;->LOCALE_ARABIC:Ljava/util/Locale;
    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$500()Ljava/util/Locale;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-array v4, v7, [Ljava/util/Locale;

    .line 234
    # getter for: Lcom/android/launcher3/util/locale/LocaleUtils;->LOCALE_HEBREW:Ljava/util/Locale;
    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$400()Ljava/util/Locale;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-array v4, v7, [Ljava/util/Locale;

    .line 235
    # getter for: Lcom/android/launcher3/util/locale/LocaleUtils;->LOCALE_GREEK:Ljava/util/Locale;
    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$300()Ljava/util/Locale;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-array v4, v7, [Ljava/util/Locale;

    .line 236
    # getter for: Lcom/android/launcher3/util/locale/LocaleUtils;->LOCALE_UKRAINIAN:Ljava/util/Locale;
    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$200()Ljava/util/Locale;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-array v4, v7, [Ljava/util/Locale;

    .line 237
    # getter for: Lcom/android/launcher3/util/locale/LocaleUtils;->LOCALE_HINDI:Ljava/util/Locale;
    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$100()Ljava/util/Locale;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    invoke-direct {v4, v6, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    .line 238
    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0xe40

    const/16 v6, 0xe45

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    .line 239
    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x621

    const/16 v6, 0x626

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    .line 240
    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    invoke-direct {v4, v9, v9}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    .line 241
    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    invoke-direct {v4, v10, v10}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    .line 242
    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x1108

    const/16 v6, 0x1108

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    .line 243
    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x110a

    const/16 v6, 0x110a

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    .line 244
    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x110d

    const/16 v6, 0x110d

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    .line 245
    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x1780

    const/16 v6, 0x17dd

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    .line 246
    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x17e0

    const/16 v6, 0x17e9

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    .line 247
    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x17f0

    const/16 v6, 0x17f9

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    .line 248
    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x3131

    const/16 v6, 0x3131

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    .line 249
    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x3134

    const/16 v6, 0x3134

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    .line 250
    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x3137

    const/16 v6, 0x3137

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    .line 251
    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x3139

    const/16 v6, 0x3139

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    .line 252
    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x3141

    const/16 v6, 0x3142

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    .line 253
    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x3145

    const/16 v6, 0x3145

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    .line 254
    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x3147

    const/16 v6, 0x3148

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    .line 255
    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x314a

    const/16 v6, 0x314e

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    .line 256
    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-array v4, v7, [Ljava/util/Locale;

    .line 257
    # getter for: Lcom/android/launcher3/util/locale/LocaleUtils;->LOCALE_SERBIAN:Ljava/util/Locale;
    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$000()Ljava/util/Locale;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    .line 258
    invoke-virtual {v3}, Landroid/icu/text/AlphabeticIndex;->buildImmutableIndex()Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    move-result-object v3

    sput-object v3, Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    .line 259
    return-void
.end method


# virtual methods
.method public getConsistKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 266
    move-object v3, p1

    .line 267
    .local v3, "result":Ljava/lang/String;
    const/16 v7, 0xa0

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "trimmedName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 269
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "currentLanguage":Ljava/lang/String;
    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 271
    .local v1, "ch":C
    invoke-static {v1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v5

    .line 275
    .local v5, "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    # invokes: Lcom/android/launcher3/util/locale/LocaleUtils;->isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    invoke-static {v5}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$700(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v7

    if-nez v7, :cond_0

    # invokes: Lcom/android/launcher3/util/locale/LocaleUtils;->isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    invoke-static {v5}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$800(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 276
    :cond_0
    const/4 v6, 0x0

    .line 281
    .local v6, "useIcuAlphabeticIndex":Z
    :goto_0
    # getter for: Lcom/android/launcher3/util/locale/LocaleUtils;->KOREAN_LANGUAGE:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$900()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    # invokes: Lcom/android/launcher3/util/locale/LocaleUtils;->isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    invoke-static {v5}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$700(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 283
    const/4 v6, 0x1

    .line 286
    :cond_1
    # getter for: Lcom/android/launcher3/util/locale/LocaleUtils;->JAPANESE_LANGUAGE:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$1000()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 290
    :cond_2
    sget-object v7, Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v7, v4}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketIndex(Ljava/lang/CharSequence;)I

    move-result v0

    .line 291
    .local v0, "bucketIndex":I
    if-eqz v6, :cond_5

    if-ltz v0, :cond_5

    .line 292
    sget-object v7, Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v7, v0}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v7

    invoke-virtual {v7}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 301
    .end local v0    # "bucketIndex":I
    .end local v1    # "ch":C
    .end local v2    # "currentLanguage":Ljava/lang/String;
    .end local v5    # "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    .end local v6    # "useIcuAlphabeticIndex":Z
    :cond_3
    :goto_1
    return-object v3

    .line 278
    .restart local v1    # "ch":C
    .restart local v2    # "currentLanguage":Ljava/lang/String;
    .restart local v5    # "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    :cond_4
    const/4 v6, 0x1

    .restart local v6    # "useIcuAlphabeticIndex":Z
    goto :goto_0

    .line 294
    .restart local v0    # "bucketIndex":I
    :cond_5
    const/4 v7, 0x1

    invoke-virtual {v4, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

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
    .line 305
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 262
    return-object p1
.end method
