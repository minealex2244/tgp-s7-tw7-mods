.class public Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;
.super Ljava/lang/Object;
.source "NlgIdMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/executor/NlgIdMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenParam"
.end annotation


# instance fields
.field public attrName:Ljava/lang/String;

.field public attrValue:Ljava/lang/String;

.field public paramName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "attrValue"    # Ljava/lang/String;

    .prologue
    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    iput-object p1, p0, Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;->paramName:Ljava/lang/String;

    .line 553
    iput-object p2, p0, Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;->attrName:Ljava/lang/String;

    .line 554
    iput-object p3, p0, Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;->attrValue:Ljava/lang/String;

    .line 555
    return-void
.end method
