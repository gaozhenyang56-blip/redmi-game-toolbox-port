.class public final Lyj/b;
.super Lyj/f;
.source "SourceFile"


# direct methods
.method public static bridge synthetic d(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 0
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lyj/f;->d(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
