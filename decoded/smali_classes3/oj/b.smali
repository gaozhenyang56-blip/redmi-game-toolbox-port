.class public final Loj/b;
.super Loj/c;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 0
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/HidesMembers;
    .end annotation

    invoke-static {p0, p1}, Loj/c;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void
.end method
