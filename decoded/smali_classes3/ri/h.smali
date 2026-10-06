.class Lri/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lri/g;


# direct methods
.method constructor <init>(Lri/g;)V
    .locals 0

    iput-object p1, p0, Lri/h;->a:Lri/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lri/h;->a:Lri/g;

    iget-object v0, v0, Lri/g;->a:Lri/b;

    invoke-static {v0}, Lri/b;->v(Lri/b;)V

    return-void
.end method
