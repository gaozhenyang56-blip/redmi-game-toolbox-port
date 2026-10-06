.class Lri/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lri/e;


# direct methods
.method constructor <init>(Lri/e;)V
    .locals 0

    iput-object p1, p0, Lri/f;->a:Lri/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lri/f;->a:Lri/e;

    iget-object v0, v0, Lri/e;->a:Lri/b;

    invoke-static {v0}, Lri/b;->l(Lri/b;)V

    return-void
.end method
