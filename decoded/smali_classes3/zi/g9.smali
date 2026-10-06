.class public Lzi/g9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lzi/n9;

.field private final b:Lzi/x9;


# direct methods
.method public constructor <init>(Lzi/p9;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lzi/x9;

    invoke-direct {v0}, Lzi/x9;-><init>()V

    iput-object v0, p0, Lzi/g9;->b:Lzi/x9;

    invoke-interface {p1, v0}, Lzi/p9;->L(Lzi/y9;)Lzi/n9;

    move-result-object p1

    iput-object p1, p0, Lzi/g9;->a:Lzi/n9;

    return-void
.end method


# virtual methods
.method public a(Lzi/c9;[B)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lzi/g9;->b:Lzi/x9;

    invoke-virtual {v0, p2}, Lzi/x9;->h([B)V

    iget-object p2, p0, Lzi/g9;->a:Lzi/n9;

    invoke-interface {p1, p2}, Lzi/c9;->t(Lzi/n9;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lzi/g9;->a:Lzi/n9;

    invoke-virtual {p1}, Lzi/n9;->I()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lzi/g9;->a:Lzi/n9;

    invoke-virtual {p2}, Lzi/n9;->I()V

    throw p1
.end method
