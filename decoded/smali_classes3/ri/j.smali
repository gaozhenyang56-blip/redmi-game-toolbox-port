.class Lri/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lzi/a1;

.field final synthetic b:Lri/b;


# direct methods
.method constructor <init>(Lri/b;Lzi/a1;)V
    .locals 0

    iput-object p1, p0, Lri/j;->b:Lri/b;

    iput-object p2, p0, Lri/j;->a:Lzi/a1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lri/j;->a:Lzi/a1;

    invoke-virtual {v0}, Lzi/a1;->run()V

    return-void
.end method
