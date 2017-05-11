.class Lcom/android/launcher3/util/logging/GSIMLoggingInfo;
.super Ljava/lang/Object;
.source "GSIMLogging.java"


# instance fields
.field private mExtras:Ljava/lang/String;

.field private mFeatures:Ljava/lang/String;

.field private mValues:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "features"    # Ljava/lang/String;
    .param p2, "extras"    # Ljava/lang/String;
    .param p3, "values"    # J

    .prologue
    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    iput-object p1, p0, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;->mFeatures:Ljava/lang/String;

    .line 453
    iput-object p2, p0, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;->mExtras:Ljava/lang/String;

    .line 454
    iput-wide p3, p0, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;->mValues:J

    .line 455
    return-void
.end method


# virtual methods
.method public getExtras()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;->mExtras:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatures()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;->mFeatures:Ljava/lang/String;

    return-object v0
.end method

.method public getValues()J
    .locals 2

    .prologue
    .line 448
    iget-wide v0, p0, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;->mValues:J

    return-wide v0
.end method
