.class Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$4;
.super Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$AbstractObjectList;
.source "XSSimpleTypeDecl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getEnumerationItemTypeList()Lmf/org/apache/xerces/xs/datatypes/ObjectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$4;->this$0:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v0, 0x0

    .line 2294
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$AbstractObjectList;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$AbstractObjectList;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2299
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$4;->this$0:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    # getter for: Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->access$0(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2300
    :cond_0
    return v1

    .line 2299
    :cond_1
    instance-of v0, p1, Lmf/org/apache/xerces/xs/ShortList;

    if-eqz v0, :cond_0

    move v0, v1

    .line 2301
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$4;->this$0:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    # getter for: Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I
    invoke-static {v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->access$1(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 2302
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$4;->this$0:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    # getter for: Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    invoke-static {v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->access$0(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v2, v2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    if-eq v2, p1, :cond_2

    .line 2301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2303
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 2304
    :cond_3
    return v1
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 2296
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$4;->this$0:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    # getter for: Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->access$0(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$4;->this$0:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    # getter for: Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I
    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->access$1(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)I

    move-result v0

    goto :goto_0
.end method

.method public item(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2307
    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 2308
    return-object v0

    .line 2307
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$4;->getLength()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2310
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$4;->this$0:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    # getter for: Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->access$0(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    return-object v0
.end method