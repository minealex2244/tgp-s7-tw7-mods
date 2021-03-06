.class public final Lmf/org/apache/xerces/impl/xs/util/StringListImpl;
.super Ljava/util/AbstractList;
.source "StringListImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/StringList;


# static fields
.field public static final EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;


# instance fields
.field private final fArray:[Ljava/lang/String;

.field private final fLength:I

.field private final fVector:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    new-array v1, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 52
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    .line 53
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    .line 54
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fArray:[Ljava/lang/String;

    .line 55
    return-void

    :cond_0
    const/4 v0, 0x0

    .line 53
    goto :goto_0
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 64
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fArray:[Ljava/lang/String;

    .line 65
    iput p2, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    .line 67
    return-void
.end method

.method private toArray0([Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 158
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    if-gtz v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fArray:[Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 89
    if-eqz p1, :cond_1

    move v0, v1

    .line 96
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    if-ge v0, v2, :cond_4

    .line 97
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 90
    :goto_1
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    if-ge v0, v2, :cond_4

    .line 91
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    :cond_2
    return v3

    .line 98
    :cond_3
    return v3

    .line 101
    :cond_4
    return v1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 119
    if-gez p1, :cond_1

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    if-ge p1, v0, :cond_0

    .line 120
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    if-nez v0, :cond_2

    .line 123
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fArray:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 121
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    return v0
.end method

.method public item(I)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    if-gez p1, :cond_1

    .line 106
    :cond_0
    return-object v1

    .line 105
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    if-ge p1, v0, :cond_0

    .line 108
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    if-nez v0, :cond_2

    .line 111
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fArray:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 109
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->getLength()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 136
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 137
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->toArray0([Ljava/lang/Object;)V

    .line 138
    return-object v0

    .line 134
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 145
    array-length v0, p1

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    if-lt v0, v1, :cond_1

    .line 150
    :goto_0
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->toArray0([Ljava/lang/Object;)V

    .line 151
    array-length v0, p1

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    if-gt v0, v1, :cond_2

    .line 154
    :goto_1
    return-object p1

    .line 143
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 146
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 148
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    goto :goto_0

    .line 152
    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    aput-object v2, p1, v0

    goto :goto_1
.end method
