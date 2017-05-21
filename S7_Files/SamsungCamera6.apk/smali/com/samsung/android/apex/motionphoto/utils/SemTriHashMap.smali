.class public Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap;
.super Ljava/lang/Object;
.source "SemTriHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap$ValueVO;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;",
            "Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap$ValueVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap;, "Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap<TK;TV1;TV2;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap;->mMap:Ljava/util/HashMap;

    .line 34
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap;, "Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap;->mMap:Ljava/util/HashMap;

    .line 51
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap;, "Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap<TK;TV1;TV2;>;"
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap;->clear()V

    .line 62
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 63
    return-void
.end method

.method public getFirst(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV1;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap;, "Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap<TK;TV1;TV2;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap$ValueVO;

    iget-object v0, v0, Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap$ValueVO;->v1:Ljava/lang/Object;

    return-object v0
.end method

.method public getSecond(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV2;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap;, "Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap<TK;TV1;TV2;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap$ValueVO;

    iget-object v0, v0, Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap$ValueVO;->v2:Ljava/lang/Object;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap;, "Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV1;TV2;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap;, "Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap<TK;TV1;TV2;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val1":Ljava/lang/Object;, "TV1;"
    .local p3, "val2":Ljava/lang/Object;, "TV2;"
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap;->mMap:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap$ValueVO;

    invoke-direct {v1, p2, p3}, Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap$ValueVO;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap;, "Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap<TK;TV1;TV2;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
