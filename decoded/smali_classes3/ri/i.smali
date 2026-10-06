.class Lri/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lzi/z0;

.field final synthetic b:Lri/b;


# direct methods
.method constructor <init>(Lri/b;Lzi/z0;)V
    .locals 0

    iput-object p1, p0, Lri/i;->b:Lri/b;

    iput-object p2, p0, Lri/i;->a:Lzi/z0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lri/i;->a:Lzi/z0;

    invoke-virtual {v0}, Lzi/z0;->run()V

    return-void
.end method
