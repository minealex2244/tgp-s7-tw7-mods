.class Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;
.super Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
.source "SchemaGrammar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuiltinAttrDecl"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)V
    .locals 1

    .prologue
    .line 1267
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;-><init>()V

    .line 1269
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;->fName:Ljava/lang/String;

    .line 1270
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    .line 1271
    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 1272
    int-to-short v0, p4

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;->fScope:S

    .line 1273
    return-void
.end method


# virtual methods
.method public getAnnotation()Lmf/org/apache/xerces/xs/XSAnnotation;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1286
    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    .prologue
    .line 1290
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    return-object v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 1283
    return-void
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;SSLmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)V
    .locals 0

    .prologue
    .line 1279
    return-void
.end method