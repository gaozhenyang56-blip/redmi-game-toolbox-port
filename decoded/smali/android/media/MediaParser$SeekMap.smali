.class public final synthetic Landroid/media/MediaParser$SeekMap;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw v0
.end method


# virtual methods
.method public native synthetic getDurationMicros()J
.end method

.method public native synthetic getSeekPoints(J)Landroid/util/Pair;
    .annotation build Landroid/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair<",
            "Landroid/media/MediaParser$SeekPoint;",
            "Landroid/media/MediaParser$SeekPoint;",
            ">;"
        }
    .end annotation
.end method

.method public native synthetic isSeekable()Z
.end method
