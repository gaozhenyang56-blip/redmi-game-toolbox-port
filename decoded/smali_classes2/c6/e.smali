.class public Lc6/e;
.super Lc6/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILjava/lang/String;Lc6/h$a;Z)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lc6/h$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "descRes"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelValue"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lc6/h;-><init>(ILjava/lang/String;Lc6/h$a;Z)V

    return-void
.end method
