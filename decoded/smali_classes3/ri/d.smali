.class Lri/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lqi/c;

.field final synthetic b:Lri/b;


# direct methods
.method constructor <init>(Lri/b;Lqi/c;)V
    .locals 0

    iput-object p1, p0, Lri/d;->b:Lri/b;

    iput-object p2, p0, Lri/d;->a:Lqi/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lri/d;->b:Lri/b;

    iget-object v1, p0, Lri/d;->a:Lqi/c;

    invoke-static {v0, v1}, Lri/b;->n(Lri/b;Lqi/c;)V

    return-void
.end method
