.class public Lcom/android/launcher3/appssearch/SearchResultStore;
.super Ljava/lang/Object;
.source "SearchResultStore.java"


# instance fields
.field public contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/appssearch/GalaxyAppsContent;",
            ">;"
        }
    .end annotation
.end field

.field public currencyUnit:Ljava/lang/String;

.field public currencyUnitDivision:Ljava/lang/String;

.field public currencyUnitHasPenny:Ljava/lang/String;

.field public currencyUnitPrecedes:Ljava/lang/String;

.field public decimalSymbol:Ljava/lang/String;

.field public digitGroupingSymbol:Ljava/lang/String;

.field public keyword:Ljava/lang/String;

.field public resultCode:Ljava/lang/String;

.field public resultMsg:Ljava/lang/String;

.field public totalCount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appssearch/SearchResultStore;->contents:Ljava/util/ArrayList;

    .line 22
    return-void
.end method
