.class public Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;
.super Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;
.source "XMLSchemaValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "KeyValueStore"
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;)V
    .locals 0

    .prologue
    .line 4173
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    .line 4174
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;-><init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    .line 4175
    return-void
.end method


# virtual methods
.method protected checkDuplicateValues()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4185
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;->contains()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4192
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "DuplicateKey"

    .line 4187
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;->fLocalValues:[Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4188
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v2

    .line 4189
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v3

    .line 4190
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    invoke-virtual {v4, v0, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
