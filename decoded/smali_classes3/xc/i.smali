.class public final synthetic Lxc/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lxc/k$a;


# direct methods
.method public synthetic constructor <init>(Lxc/k$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxc/i;->a:Lxc/k$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lxc/i;->a:Lxc/k$a;

    invoke-static {v0}, Lxc/k$a;->b(Lxc/k$a;)V

    return-void
.end method
