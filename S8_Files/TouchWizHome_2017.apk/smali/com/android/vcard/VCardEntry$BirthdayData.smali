.class public Lcom/android/vcard/VCardEntry$BirthdayData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BirthdayData"
.end annotation


# instance fields
.field private final mBirthday:Ljava/lang/String;

.field private mBirthdaySolaType:Ljava/lang/String;

.field private mBirthdaySolarDate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "birthday"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1553
    iput-object v0, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthdaySolaType:Ljava/lang/String;

    .line 1554
    iput-object v0, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthdaySolarDate:Ljava/lang/String;

    .line 1557
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    .line 1558
    return-void
.end method

.method static synthetic access$2200(Lcom/android/vcard/VCardEntry$BirthdayData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/vcard/VCardEntry$BirthdayData;

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .locals 6
    .param p2, "backReferenceIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "operationList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    const/4 v5, 0x3

    .line 1563
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1565
    .local v1, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "raw_contact_id"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1566
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1568
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1569
    .local v0, "array":[Ljava/lang/String;
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v3

    if-eqz v3, :cond_1

    array-length v3, v0

    if-ne v3, v5, :cond_1

    .line 1571
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1572
    .local v2, "tempBirthday":Ljava/lang/String;
    const-string v3, "data1"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1577
    .end local v2    # "tempBirthday":Ljava/lang/String;
    :goto_0
    const-string v3, "data2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1580
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthdaySolaType:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1581
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1582
    const-string v3, "data15"

    iget-object v4, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthdaySolaType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1583
    const-string v3, "data14"

    iget-object v4, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthdaySolarDate:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1586
    :cond_0
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1587
    return-void

    .line 1574
    :cond_1
    const-string v3, "data1"

    iget-object v4, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1596
    if-ne p0, p1, :cond_0

    .line 1597
    const/4 v1, 0x1

    .line 1603
    :goto_0
    return v1

    .line 1599
    :cond_0
    instance-of v1, p1, Lcom/android/vcard/VCardEntry$BirthdayData;

    if-nez v1, :cond_1

    .line 1600
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 1602
    check-cast v0, Lcom/android/vcard/VCardEntry$BirthdayData;

    .line 1603
    .local v0, "birthdayData":Lcom/android/vcard/VCardEntry$BirthdayData;
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 1618
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->BIRTHDAY:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setBirthdaySolarDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "solarDate"    # Ljava/lang/String;

    .prologue
    .line 1631
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthdaySolarDate:Ljava/lang/String;

    .line 1632
    return-void
.end method

.method public setBirthdayType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1627
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthdaySolaType:Ljava/lang/String;

    .line 1628
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "birthday: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
