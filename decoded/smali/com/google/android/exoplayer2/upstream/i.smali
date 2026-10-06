.class public final synthetic Lcom/google/android/exoplayer2/upstream/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/HttpDataSource;

    move-result-object p0

    return-object p0
.end method
