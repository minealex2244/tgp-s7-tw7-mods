.class public Lcom/android/launcher3/appssearch/ItemDetails;
.super Ljava/lang/Object;
.source "ItemDetails.java"


# instance fields
.field private mIconBitmap:Landroid/graphics/Bitmap;

.field private name:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private rating:Ljava/lang/String;

.field private sellerName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/launcher3/appssearch/ItemDetails;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getItemSeller()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/launcher3/appssearch/ItemDetails;->sellerName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/android/launcher3/appssearch/ItemDetails;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/launcher3/appssearch/ItemDetails;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/launcher3/appssearch/ItemDetails;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/launcher3/appssearch/ItemDetails;->rating:Ljava/lang/String;

    return-object v0
.end method

.method public setIconImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/launcher3/appssearch/ItemDetails;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 31
    return-void
.end method

.method public setItemSeller(Ljava/lang/String;)V
    .locals 0
    .param p1, "seller"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/android/launcher3/appssearch/ItemDetails;->sellerName:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/android/launcher3/appssearch/ItemDetails;->name:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/launcher3/appssearch/ItemDetails;->pkgName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/launcher3/appssearch/ItemDetails;->price:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setRating(Ljava/lang/String;)V
    .locals 0
    .param p1, "rank"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/launcher3/appssearch/ItemDetails;->rating:Ljava/lang/String;

    return-void
.end method
