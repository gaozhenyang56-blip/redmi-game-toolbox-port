.class Ltl/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ltl/a;


# direct methods
.method constructor <init>(Ltl/a;)V
    .locals 0

    iput-object p1, p0, Ltl/a$a;->a:Ltl/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(J)V
    .locals 1

    iget-object v0, p0, Ltl/a$a;->a:Ltl/a;

    invoke-static {v0, p1, p2}, Ltl/a;->a(Ltl/a;J)V

    iget-object p1, p0, Ltl/a$a;->a:Ltl/a;

    invoke-static {p1}, Ltl/a;->b(Ltl/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Ltl/a$a;->a:Ltl/a;

    invoke-virtual {p1}, Ltl/a;->h()Ltl/a$c;

    move-result-object p1

    invoke-virtual {p1}, Ltl/a$c;->c()V

    :cond_0
    return-void
.end method
