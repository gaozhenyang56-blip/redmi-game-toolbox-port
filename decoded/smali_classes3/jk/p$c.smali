.class final Ljk/p$c;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljk/p;->g0(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lik/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/l<",
        "Lgk/c;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Ljk/p$c;->a:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lgk/c;)Ljava/lang/String;
    .locals 1
    .param p1    # Lgk/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ljk/p$c;->a:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ljk/p;->i0(Ljava/lang/CharSequence;Lgk/c;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lgk/c;

    invoke-virtual {p0, p1}, Ljk/p$c;->a(Lgk/c;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
