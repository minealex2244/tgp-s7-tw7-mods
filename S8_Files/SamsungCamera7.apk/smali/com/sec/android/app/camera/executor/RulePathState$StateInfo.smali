.class public Lcom/sec/android/app/camera/executor/RulePathState$StateInfo;
.super Ljava/lang/Object;
.source "RulePathState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/executor/RulePathState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateInfo"
.end annotation


# instance fields
.field public dimKey:I

.field public nlgLandingStateId:I

.field public stateIdName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "stateIdName"    # Ljava/lang/String;
    .param p2, "dimKey"    # I

    .prologue
    .line 919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 920
    iput-object p1, p0, Lcom/sec/android/app/camera/executor/RulePathState$StateInfo;->stateIdName:Ljava/lang/String;

    .line 921
    iput p2, p0, Lcom/sec/android/app/camera/executor/RulePathState$StateInfo;->dimKey:I

    .line 922
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/executor/RulePathState$StateInfo;->nlgLandingStateId:I

    .line 923
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "stateIdName"    # Ljava/lang/String;
    .param p2, "dimKey"    # I
    .param p3, "nlgLandingStateId"    # I

    .prologue
    .line 913
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 914
    iput-object p1, p0, Lcom/sec/android/app/camera/executor/RulePathState$StateInfo;->stateIdName:Ljava/lang/String;

    .line 915
    iput p2, p0, Lcom/sec/android/app/camera/executor/RulePathState$StateInfo;->dimKey:I

    .line 916
    iput p3, p0, Lcom/sec/android/app/camera/executor/RulePathState$StateInfo;->nlgLandingStateId:I

    .line 917
    return-void
.end method
