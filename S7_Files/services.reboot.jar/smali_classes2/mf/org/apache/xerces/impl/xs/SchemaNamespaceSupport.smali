.class public Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;
.super Lmf/org/apache/xerces/util/NamespaceSupport;
.source "SchemaNamespaceSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;
    }
.end annotation


# instance fields
.field private fSchemaRootContext:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-direct {p0}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fSchemaRootContext:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;

    .line 61
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fSchemaRootContext:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fSchemaRootContext:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;

    .line 62
    iget v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fNamespaceSize:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fNamespaceSize:I

    .line 63
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v0, v0

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fNamespaceSize:I

    if-lt v0, v1, :cond_0

    .line 65
    :goto_0
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fNamespaceSize:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iget v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fCurrentContext:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fCurrentContext:I

    .line 67
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fContext:[I

    array-length v0, v0

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fCurrentContext:I

    if-le v0, v1, :cond_1

    .line 69
    :goto_1
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fContext:[I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fContext:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fCurrentContext:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    return-void

    .line 64
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fNamespaceSize:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fNamespace:[Ljava/lang/String;

    goto :goto_0

    .line 68
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fCurrentContext:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fContext:[I

    goto :goto_1
.end method

.method public constructor <init>(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    .line 47
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fSchemaRootContext:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;

    .line 51
    if-nez p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    instance-of v0, p1, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    if-nez v0, :cond_0

    .line 52
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmf/org/w3c/dom/Document;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 54
    new-instance v0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;

    invoke-direct {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;-><init>(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/util/SymbolTable;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fSchemaRootContext:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;

    goto :goto_0
.end method


# virtual methods
.method public getEffectiveLocalContext()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 110
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fCurrentContext:I

    if-ge v1, v2, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-object v0

    .line 111
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fContext:[I

    aget v1, v1, v2

    .line 112
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fNamespaceSize:I

    sub-int/2addr v2, v1

    .line 113
    if-lez v2, :cond_0

    .line 114
    new-array v0, v2, [Ljava/lang/String;

    .line 115
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fNamespace:[Ljava/lang/String;

    invoke-static {v3, v1, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 132
    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-object v0

    .line 133
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fSchemaRootContext:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fSchemaRootContext:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fDOMContextBuilt:Z

    if-eqz v1, :cond_2

    .line 138
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fSchemaRootContext:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;

    iget v1, v1, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespaceSize:I

    if-lez v1, :cond_0

    .line 139
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->containsPrefix(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fSchemaRootContext:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fSchemaRootContext:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fillNamespaceContext()V

    .line 136
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fSchemaRootContext:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fDOMContextBuilt:Z

    goto :goto_1
.end method

.method public makeGlobal()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 125
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fCurrentContext:I

    if-ge v0, v1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 126
    :cond_0
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fCurrentContext:I

    .line 127
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fContext:[I

    aget v0, v0, v1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fNamespaceSize:I

    goto :goto_0
.end method

.method public setEffectiveContext([Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 84
    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->pushContext()V

    .line 86
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fNamespaceSize:I

    array-length v1, p1

    add-int/2addr v0, v1

    .line 87
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v1, v1

    if-lt v1, v0, :cond_2

    .line 93
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fNamespaceSize:I

    .line 94
    array-length v3, p1

    .line 93
    invoke-static {p1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fNamespaceSize:I

    .line 96
    return-void

    .line 89
    :cond_2
    new-array v1, v0, [Ljava/lang/String;

    .line 90
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->fNamespace:[Ljava/lang/String;

    goto :goto_0
.end method
