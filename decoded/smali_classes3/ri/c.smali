.class Lri/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lqi/b;

.field final synthetic b:Lri/b;


# direct methods
.method constructor <init>(Lri/b;Lqi/b;)V
    .locals 0

    iput-object p1, p0, Lri/c;->b:Lri/b;

    iput-object p2, p0, Lri/c;->a:Lqi/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lri/c;->b:Lri/b;

    iget-object v1, p0, Lri/c;->a:Lqi/b;

    invoke-static {v0, v1}, Lri/b;->m(Lri/b;Lqi/b;)V

    return-void
.end method
