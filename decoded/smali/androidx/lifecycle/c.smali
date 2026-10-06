.class public final Landroidx/lifecycle/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Llk/i0;


# instance fields
.field private final a:Ltj/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltj/g;)V
    .locals 1
    .param p1    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/c;->a:Ltj/g;

    return-void
.end method


# virtual methods
.method public L()Ltj/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Landroidx/lifecycle/c;->a:Ltj/g;

    return-object v0
.end method

.method public close()V
    .locals 3

    invoke-virtual {p0}, Landroidx/lifecycle/c;->L()Ltj/g;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Llk/w1;->d(Ltj/g;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method
