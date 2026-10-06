.class Lzi/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lzi/k$b;

.field final synthetic b:Lzi/k;


# direct methods
.method constructor <init>(Lzi/k;Lzi/k$b;)V
    .locals 0

    iput-object p1, p0, Lzi/m;->b:Lzi/k;

    iput-object p2, p0, Lzi/m;->a:Lzi/k$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lzi/m;->b:Lzi/k;

    iget-object v1, p0, Lzi/m;->a:Lzi/k$b;

    invoke-virtual {v0, v1}, Lzi/k;->e(Lzi/k$b;)V

    return-void
.end method
