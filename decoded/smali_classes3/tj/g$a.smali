.class public final Ltj/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltj/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Ltj/g;Ltj/g;)Ltj/g;
    .locals 1
    .param p0    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ltj/h;->a:Ltj/h;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ltj/g$a$a;->a:Ltj/g$a$a;

    invoke-interface {p1, p0, v0}, Ltj/g;->o(Ljava/lang/Object;Lak/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltj/g;

    :goto_0
    return-object p0
.end method
